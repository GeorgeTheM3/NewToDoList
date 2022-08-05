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
    
    func appendNewTask(title: String, description: String?, start: String?, end: String?){
        let task = Task(title: title, description: description ?? "No description", startTime: start, deadLine: end)
        arrayTasks.append(task)
    }
    
    func removeTask(title: String) {
        if arrayTasks.contains(where: {$0.title == title}) {
            arrayTasks.removeAll(where: {$0.title == title})
        } else {
            readyTasks.removeAll(where: {$0.title == title})
        }
    }
    
    func getReadyTasks(){
        for task in arrayTasks {
            if task.status {
                readyTasks.append(task)
                arrayTasks.removeAll(where: {$0.title == task.title })
            }
        }
    }
    
    func getInProgressTasks(){
        for task in readyTasks {
            if !task.status {
                arrayTasks.append(task)
                readyTasks.removeAll(where: {$0.title == task.title })
            }
        }
    }
}




