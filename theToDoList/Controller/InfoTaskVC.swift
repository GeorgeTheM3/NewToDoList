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
    private lazy var startTime: String = ""
    private lazy var endTime: String? = ""

    private var infoTaskView: InfoTaskView {
        guard let view = self.view as? InfoTaskView else { return InfoTaskView()}
        return view
    }

    override func loadView() {
        super.loadView()
        self.view = InfoTaskView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        backButton(self, action: #selector(toTasksView))
        deleteButton(self, action: #selector(deleteToTasksView))
        doneButton(self, action: #selector(doneTasksButton))
        setViewWithContent(title: titleTask, description: descriptionTask, start: startTime, end: endTime)
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
        turnOffButton()
    }

    func setInfo(title: String, description: String?, index: Int, start: Date, end: Date?) {
        let dateStart = start.formatted(date: .abbreviated, time: .shortened)
        let dateEnd = end?.formatted(date: .abbreviated, time: .shortened)
        titleTask = title
        descriptionTask = description
        indexOfTask = index
        startTime = dateStart
        endTime = dateEnd
    }

    private func backButton(_ target: Any?, action: Selector) {
        infoTaskView.backButton.addTarget(target, action: action, for: .touchUpInside)
    }

    private func deleteButton(_ target: Any?, action: Selector) {
        infoTaskView.deleteButton.addTarget(target, action: action, for: .touchUpInside)
    }

    private func doneButton(_ target: Any?, action: Selector) {
        infoTaskView.doneButton.addTarget(target, action: action, for: .touchUpInside)
    }

    private func setViewWithContent(title: String, description: String?, start: String, end: String?) {
        infoTaskView.titleLabel.text = title
        infoTaskView.descriptionView.text = description
        infoTaskView.startTime.text = start
        infoTaskView.deadLineTime.text = end ?? "No deadline"
    }

    private func turnOffButton() {
        infoTaskView.doneButton.isHidden = true
    }
}
