//
//  Model.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import Foundation

var dictionary: [String: String] = [:]

class User {
    var login: String
    var password: String
    
    init(login: String, passwod: String){
        self.login = login
        self.password = passwod
    }
}
