//
//  TasksVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import UIKit

class TasksVC: UIViewController {

    private var tasksView: TasksView {
        return self.view as! TasksView
    }
    
    override func loadView() {
        super.loadView()
        self.view = TasksView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tasksView.tableViewTasks.dataSource = self
        tasksView.tableViewTasks.delegate = self
        tasksView.toAddTaskView(self, action: #selector(toAddTaskView))
        tasksView.segmentedCont(self, action: #selector(changeTasks))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tasksArray.getReadyTasks()
        tasksView.tableViewTasks.reloadData()
    }
    
    @objc private func toAddTaskView() {
        let vc = AddTaskVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc private func changeTasks(_ segmentedControl: UISegmentedControl){
        tasksView.tableViewTasks.reloadData()
    }
}
//MARK: TableView DataSourse
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! CustomCell
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 10
        
        let segmentedControlIndex = tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            let title = tasksArray.readyTasks[indexPath.row].title
            cell.changeTitle(text: title)
            cell.hideTime()
            cell.changeImage(text: "done")
            
            return cell
        case 1:
            let title = tasksArray.arrayTasks[indexPath.row].title
            let time = tasksArray.arrayTasks[indexPath.row].deadLine
            cell.changeTitle(text: title)
            cell.changeImage(text: "")
            cell.showTime()
            cell.changeTime(time: time ?? "no deadline")
            return cell
        default:
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
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
        let action = UIContextualAction(style: .destructive, title: "Done") { (action, view, complition) in
            tasksArray.arrayTasks[indexPath.row].changeStatus()
            tasksArray.getReadyTasks()
            self.tasksView.tableViewTasks.reloadData()
        }
        action.backgroundColor = .lightText
        action.image = UIImage(named: "done")
        return action
    }
    
    func inProgressAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "In Progress") { (action, view, complition) in
            tasksArray.readyTasks[indexPath.row].changeStatusFalse()
            tasksArray.getInProgressTasks()
            self.tasksView.tableViewTasks.reloadData()
        }
        action.backgroundColor = .orange
        action.image = UIImage(named: "forwardArrow")
        return action
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

//MARK: TableView Delegate
extension TasksVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segmentedControlIndex = tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            let title = tasksArray.readyTasks[indexPath.row].title
            let description = tasksArray.readyTasks[indexPath.row].description
            let startTime = tasksArray.readyTasks[indexPath.row].startTime
            let endTime = tasksArray.readyTasks[indexPath.row].deadLine
            let vc = InfoTaskVC()
            
            
            vc.setInfo(title: title, description: description, index: indexPath.row, start: startTime, end: endTime)
            // почему если этот метод поднять выше setInfo то не отображаются данные?
            vc.buttonOff()
            //
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .flipHorizontal
            present(vc, animated: true)
        case 1:
            let title = tasksArray.arrayTasks[indexPath.row].title
            let description = tasksArray.arrayTasks[indexPath.row].description
            let startTime = tasksArray.arrayTasks[indexPath.row].startTime
            let endTime = tasksArray.arrayTasks[indexPath.row].deadLine
            let vc = InfoTaskVC()
            vc.setInfo(title: title, description: description, index: indexPath.row, start: startTime, end: endTime)
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .flipHorizontal
            present(vc, animated: true)
        default:
            break
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
}
