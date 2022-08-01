//
//  Model.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import Foundation

class Tasks {
    var arrayTasks: [Task] = []

    func appendNewTask(title: String, description: String?){
        let task = Task(title: title, description: description ?? "No description")
        arrayTasks.append(task)
    }
}
