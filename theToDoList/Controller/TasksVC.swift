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
        addExampleTasks()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        tasksView.tableViewTasks.reloadData()
    }
    
    @objc private func toAddTaskView() {
        let vc = AddTaskVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func addExampleTasks(){
    model.appendNewTask(title: "Buy milk", description: nil)
    model.appendNewTask(title: "Go to gym", description: "Make yourself some stronger")
    model.appendNewTask(title: "Drink protein", description: "Much better than vodka actualy")
    }
    
    func removeFromArray(title: String){
        model.arrayTasks.removeAll(where: {$0.title == title})
    }
}

extension TasksVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.arrayTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.backgroundColor = .white
        cell.textLabel?.text = model.arrayTasks[indexPath.row].title
        return cell
    }
}

extension TasksVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = model.arrayTasks[indexPath.row].title
        let description = model.arrayTasks[indexPath.row].description
        let vc = InfoTaskVC()
        vc.infoTaskView.setViewWithContent(title: title, description: description)
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
}
