//
//  LocalStore.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

class LocaleStore {
    static let shared = LocaleStore()
    var tasksArray = Tasks()

    let date = UIDatePicker().date

    var users = Users()
}

func addExampleTasks() {
    LocaleStore.shared.tasksArray.appendNewTask(title: "Buy milk", description: nil, start: LocaleStore.shared.date, end: nil)
    LocaleStore.shared.tasksArray.appendNewTask(title: "Go to gym", description: "Make yourself some stronger", start: LocaleStore.shared.date, end: nil)
    LocaleStore.shared.tasksArray.appendNewTask(title: "Drink protein", description: "Much better than vodka actualy", start: LocaleStore.shared.date, end: nil)
}
