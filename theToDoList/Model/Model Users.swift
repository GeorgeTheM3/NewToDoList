//
//  Model Users.swift
//  theToDoList
//
//  Created by Георгий Матченко on 04.08.2022.
//

import Foundation

class Users {
    var users: [User] = []
    
    func appendNewUser(name: String, password: String) {
        users.append(User(name: name, password: password))
    }
    
    func checkUserInMemory(name: String?, password: String?) -> Bool {
        return users.contains(where: {$0.name == name && $0.password == password})
    }
}
