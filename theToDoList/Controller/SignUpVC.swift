//
//  SingUpVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

class SignUpVC: UIViewController {
    
    private lazy var userName: String = ""
    private lazy var userPassword: String = ""
    
    private var signUpView: SignUpView {
        return self.view as! SignUpView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.backButtonTarget(self, action: #selector(goBack))
        signUpView.signUpButtonTarget(self, action: #selector(appendUser))
    }
    
    override func loadView() {
        super.loadView()
        self.view = SignUpView()
    }
    
    @objc private func goBack() {
        dismiss(animated: true)
    }
    
    private func getUserNameAndPassword() {
        userName = signUpView.getName()
        userPassword = signUpView.getPassword()
    }
    
    @objc private func appendUser() {
        getUserNameAndPassword()
        users.appendNewUser(name: userName, password: userPassword)
        print(users.users)
        dismiss(animated: true)
    }
}
