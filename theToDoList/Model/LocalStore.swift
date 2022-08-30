//
//  LocalStore.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

var tasksArray = Tasks()

let date = UIDatePicker().date

func addExampleTasks() {
    tasksArray.appendNewTask(title: "Buy milk", description: nil, start: date, end: nil)
    tasksArray.appendNewTask(title: "Go to gym", description: "Make yourself some stronger", start: date, end: nil)
    tasksArray.appendNewTask(title: "Drink protein", description: "Much better than vodka actualy", start: date, end: nil)
}

var users = Users()
