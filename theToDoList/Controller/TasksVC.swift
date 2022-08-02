//
//  TasksVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import UIKit

class TasksVC: UIViewController {
    
    var model = Tasks()

    var tasksView: TasksView {
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
        getArrays()
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 15
        
        let segmentedControlIndex = tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            cell.textLabel?.text = tasksArray.readyTasks[indexPath.row].title
            return cell
        case 1:
            cell.textLabel?.text = tasksArray.arrayTasks[indexPath.row].title
            return cell
        default:
            return cell
        }
    }
}

extension TasksVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segmentedControlIndex = tasksView.segmentedControl.selectedSegmentIndex
        switch segmentedControlIndex {
        case 0:
            let title = tasksArray.readyTasks[indexPath.row].title
            let description = tasksArray.readyTasks[indexPath.row].description
            let vc = InfoTaskVC()
            vc.indexOfTask = indexPath.row
            vc.infoTaskView.setViewWithContent(title: title, description: description)
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .flipHorizontal
            present(vc, animated: true)
        case 1:
            let title = tasksArray.arrayTasks[indexPath.row].title
            let description = tasksArray.arrayTasks[indexPath.row].description
            let vc = InfoTaskVC()
            vc.indexOfTask = indexPath.row
            vc.infoTaskView.setViewWithContent(title: title, description: description)
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .flipHorizontal
            present(vc, animated: true)
        default:
            break
        }
        
    }
}
