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
        tasksView.toAddTaskView(self, action: #selector(toAddTaskView))
        tasksView.toInfoButton(self, action: #selector(toInfoTasksView))
    }
    
    @objc private func toAddTaskView() {
        let vc = AddTaskVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc private func toInfoTasksView() {
        let vc = InfoTaskVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}

