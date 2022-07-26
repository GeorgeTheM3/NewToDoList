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
        guard let view = self.view as? AddTaskView else { return AddTaskView()}
        return view
    }

    override func loadView() {
        super.loadView()
        self.view = AddTaskView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        backButton(self, action: #selector(toTaskView))
        plusButton(self, action: #selector(toTaskViewWithData))
    }

    @objc private func toTaskView() {
        dismiss(animated: true)
    }

    @objc private func toTaskViewWithData() {
        let title = returnTitle()
        guard !LocaleStore.shared.tasksArray.checkTaskInMemory(title: title) else {return uncorectTitle()}
        let description = returnDiscription()
        let startTime = datePickerStart()
        let deadLine = datePickerData()
        LocaleStore.shared.tasksArray.appendNewTask(title: title, description: description, start: startTime, end: deadLine)
        dismiss(animated: true)
    }

    private func uncorectTitle() {
        let alertController = UIAlertController(title: "Change name", message: "task with the same name is already added", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }

    private func backButton(_ target: Any?, action: Selector) {
        addTaskView.closeButton.addTarget(target, action: action, for: .touchUpInside)
    }

    private func plusButton(_ target: Any?, action: Selector) {
        addTaskView.plusButton.addTarget(target, action: action, for: .touchUpInside)
    }

    private func returnTitle() -> String {
        guard addTaskView.textfieldTitle.text?.isEmpty == false else {return "No title"}
        return addTaskView.textfieldTitle.text!
    }

    private func returnDiscription() -> String? {
        return addTaskView.textViewDescription.text
    }

    private func datePickerData() -> Date {
        addTaskView.datePicker.date
    }

    private func datePickerStart() -> Date {
        addTaskView.datePickerStart.date
    }
}
