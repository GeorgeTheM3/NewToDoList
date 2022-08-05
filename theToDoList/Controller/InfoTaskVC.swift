//
//  InfoTaskVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class InfoTaskVC: UIViewController {
    
    private lazy var titleTask: String = ""
    private lazy var descriptionTask: String? = ""
    private lazy var indexOfTask: Int = 0
    
    private var infoTaskView: InfoTaskView {
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
        infoTaskView.setViewWithContent(title: titleTask, description: descriptionTask)
    }
    
    @objc private func toTasksView() {
        dismiss(animated: true)
    }
    
    @objc private func deleteToTasksView() {
        tasksArray.removeTask(title: titleTask)
        dismiss(animated: true)
    }
    
    @objc private func doneTasksButton() {
        tasksArray.arrayTasks[indexOfTask].changeStatus()
        dismiss(animated: true)
    }
    
    func buttonOff() {
        infoTaskView.turnOffButton()
    }
    
    func setInfo(title: String, description: String?, index: Int){
        titleTask = title
        descriptionTask = description
        indexOfTask = index
    }
}
