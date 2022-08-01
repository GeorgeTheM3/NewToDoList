//
//  Model.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import Foundation

class Tasks {
    var arrayTasks: [Task] = []
    var readyTasks: [Task] = []
    
    func appendNewTask(title: String, description: String?){
        let task = Task(title: title, description: description ?? "No description")
        arrayTasks.append(task)
    }
    
    func removeTask(title: String) {
        arrayTasks.removeAll(where: {$0.title == title})
    }
}


