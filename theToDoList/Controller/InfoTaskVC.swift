//
//  InfoTaskVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class InfoTaskVC: UIViewController {
    
    lazy var indexOfTask: Int = 0
    
    var infoTaskView: InfoTaskView {
        return self.view as! InfoTaskView
    }
    
    override func loadView() {
        super.loadView()
        self.view = InfoTaskView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTaskView.backButton(self, action: #selector(toTasksView))
        infoTaskView.deleteButton(self, action: #selector(deleteToTasksView))
        infoTaskView.doneButton(self, action: #selector(doneTasksButton))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc private func toTasksView() {
        dismiss(animated: true)
    }
    
    @objc private func deleteToTasksView() {
        tasksArray.removeTask(title: infoTaskView.titleLabel.text!)
        dismiss(animated: true)
    }
    
    @objc private func doneTasksButton() {
        print("ddd")
        tasksArray.arrayTasks[indexOfTask].changeStatus()
        dismiss(animated: true)
    }
}
