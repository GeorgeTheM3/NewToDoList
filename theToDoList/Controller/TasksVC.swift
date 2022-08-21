//
//  TasksVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import UIKit

class TasksVC: UIViewController {

    private var tasksView: TasksView {
        guard let view = self.view as? TasksView else { return TasksView()}
        return view
    }
    override func loadView() {
        super.loadView()
        self.view = TasksView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tasksView.tableViewTasks.dataSource = self
        tasksView.tableViewTasks.delegate = self
        toTaskView(self, action: #selector(toAddTaskView))
        logOut(self, action: #selector(logOutToStart))
        segmentedCont(self, action: #selector(changeTasks))
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tasksArray.getReadyTasks()
        tasksView.tableViewTasks.reloadData()
    }
    @objc private func toAddTaskView() {
        let controller = AddTaskVC()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
    }
    @objc private func changeTasks(_ segmentedControl: UISegmentedControl) {
        tasksView.tableViewTasks.reloadData()
    }
    private func logOut(_ target: Any?, action: Selector) {
        tasksView.logOutButton.addTarget(target, action: action, for: .touchUpInside)
    }
    @objc private func logOutToStart() {
        dismiss(animated: true)
    }
   private func toTaskView(_ target: Any?, action: Selector) {
        tasksView.addTaskButton.addTarget(target, action: action, for: .touchUpInside)
    }
    private func segmentedCont(_ target: Any?, action: Selector) {
        tasksView.segmentedControl.addTarget(target, action: action, for: .valueChanged)
    }
}
// MARK: TableView DataSourse
extension TasksVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let segmentedControlIndex = tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            return tasksArray.readyTasks.count
        case 1:
            return tasksArray.arrayTasks.count
        default: return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let standartCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let cell = standartCell as? CustomCell else { return standartCell}
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 10

        let segmentedControlIndex = tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            cell.titleLable.text = tasksArray.readyTasks[indexPath.row].title
            cell.timeLabel.isHidden = true
            cell.imageCell.image = UIImage(named: "done")
            return cell
        case 1:
            let date = tasksArray.arrayTasks[indexPath.row].deadLine?.formatted(date: .abbreviated, time: .shortened)
            cell.timeLabel.text = date
            cell.titleLable.text = tasksArray.arrayTasks[indexPath.row].title
            cell.imageCell.image = UIImage(named: "")
            cell.timeLabel.isHidden = false
            return cell
        default:
            return cell
        }
    }
    func tableView(_ tableView: UITableView,
                   leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let segmentedControlIndex = self.tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            let inProgress = inProgressAction(at: indexPath)
            return UISwipeActionsConfiguration(actions: [inProgress])
        case 1:
            let done = doneAction(at: indexPath)
            return UISwipeActionsConfiguration(actions: [done])
        default:
            return nil
        }
    }
    func doneAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "Done") { (_, _, _) in
            tasksArray.arrayTasks[indexPath.row].changeStatus()
            tasksArray.getReadyTasks()
            self.tasksView.tableViewTasks.reloadData()
        }
        action.backgroundColor = .lightText
        action.image = UIImage(named: "done")
        return action
    }
    func inProgressAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "In Progress") { (_, _, _) in
            tasksArray.readyTasks[indexPath.row].changeStatusFalse()
            tasksArray.getInProgressTasks()
            self.tasksView.tableViewTasks.reloadData()
        }
        action.backgroundColor = .orange
        action.image = UIImage(named: "forwardArrow")
        return action
    }
    func tableView(_ tableView: UITableView,
                   commit editingStyle: UITableViewCell.EditingStyle,
                   forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        let segmentedControlIndex = self.tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            tasksArray.readyTasks.remove(at: indexPath.row)
        case 1:
            tasksArray.arrayTasks.remove(at: indexPath.row)
        default:
            break
        }
        tasksView.tableViewTasks.reloadData()
    }
}

// MARK: TableView Delegate
extension TasksVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segmentedControlIndex = tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            let title = tasksArray.readyTasks[indexPath.row].title
            let description = tasksArray.readyTasks[indexPath.row].description
            let startTime = tasksArray.readyTasks[indexPath.row].startTime
            let endTime = tasksArray.readyTasks[indexPath.row].deadLine
            let controller = InfoTaskVC()
            controller.setInfo(title: title, description: description, index: indexPath.row, start: startTime, end: endTime)
            controller.buttonOff()
            controller.modalPresentationStyle = .fullScreen
            present(controller, animated: true)
        case 1:
            let title = tasksArray.arrayTasks[indexPath.row].title
            let description = tasksArray.arrayTasks[indexPath.row].description
            let startTime = tasksArray.arrayTasks[indexPath.row].startTime
            let endTime = tasksArray.arrayTasks[indexPath.row].deadLine
            let controller = InfoTaskVC()
            controller.setInfo(title: title, description: description, index: indexPath.row, start: startTime, end: endTime)
            controller.modalPresentationStyle = .fullScreen
            present(controller, animated: true)
        default:
            break
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
}
