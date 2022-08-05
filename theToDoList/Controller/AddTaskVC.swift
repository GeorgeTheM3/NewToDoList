//
//  AddTaskVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class AddTaskVC: UIViewController {
    
    private var addTaskView: AddTaskView {
        return self.view as! AddTaskView
    }
    
    override func loadView() {
        super.loadView()
        self.view = AddTaskView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTaskView.backButton(self, action: #selector(toTaskView))
        addTaskView.plusButton(self, action: #selector(toTaskViewWithData))
    }
    
    @objc private func toTaskView() {
        dismiss(animated: true)
    }
    
    @objc private func toTaskViewWithData() {
        let title = addTaskView.returnTitle()
        let description = addTaskView.returnDiscription()
        let startTime = addTaskView.returnStartTime()
        let deadLine =  addTaskView.returnDeadLine()
        // почему не добавляется description от метода класса?
        tasksArray.appendNewTask(title: title, description: description, start: startTime, end: deadLine)
        dismiss(animated: true)
    }
}

