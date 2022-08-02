//
//  LocalStore.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//


var tasksArray = Tasks()

func addExampleTasks(){
    tasksArray.appendNewTask(title: "Buy milk", description: nil)
    tasksArray.appendNewTask(title: "Go to gym", description: "Make yourself some stronger")
    tasksArray.appendNewTask(title: "Drink protein", description: "Much better than vodka actualy")
}

func getArrays(){
    for task in tasksArray.arrayTasks {
        if task.status {
            tasksArray.readyTasks.append(task)
            tasksArray.arrayTasks.removeAll(where: {$0.title == task.title })
        }
    }
}
