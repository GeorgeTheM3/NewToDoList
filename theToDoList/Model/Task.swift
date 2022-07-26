//
//  Task.swift
//  theToDoList
//
//  Created by Георгий Матченко on 01.08.2022.
//

import Foundation

struct Task {
    var title: String
    var description: String?
    var startTime: Date
    var deadLine: Date?
    var status = false

    mutating func changeStatus() {
        status = true
    }

    mutating func changeStatusFalse() {
        status = false
    }
}
