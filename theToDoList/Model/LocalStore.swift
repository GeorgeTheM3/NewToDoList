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
