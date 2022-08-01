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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tasksView.tableViewTasks.reloadData()
    }
    
    @objc private func toAddTaskView() {
        let vc = AddTaskVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

extension TasksVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasksArray.arrayTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 15 
        cell.textLabel?.text = tasksArray.arrayTasks[indexPath.row].title
        return cell
    }
}

extension TasksVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = tasksArray.arrayTasks[indexPath.row].title
        let description = tasksArray.arrayTasks[indexPath.row].description
        let vc = InfoTaskVC()
        vc.infoTaskView.setViewWithContent(title: title, description: description)
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
}
