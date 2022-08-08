//
//  SignInVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import Foundation
import UIKit

class SignInVC: UIViewController {
    
    private lazy var userName: String? = ""
    private lazy var userPassword: String? = ""
    
    private var signInView: SignInView {
        return self.view as! SignInView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButtonTarget(self, action: #selector(goToSignUpView))
        signInButtonTarget(self, action: #selector(checkUser))
        forgetButtonTarget(self, action: #selector(forgetPassword))
        
    }
    
    override func loadView() {
        super.loadView()
        self.view = SignInView()
        addExampleTasks()
        print(tasksArray.arrayTasks)
    }
    
    @objc private func goToSignUpView() {
        let view = SignUpVC()
        view.modalPresentationStyle = .fullScreen
        present(view, animated: true)
        }
    
    private func goToTasks() {
        let view = TasksVC()
        view.modalPresentationStyle = .fullScreen
        present(view, animated: true)
        }
    
    private func getUserNameAndPassword() {
        userName = getName()
        userPassword = getPassword()
    }
    
    @objc private func checkUser() {
        getUserNameAndPassword()
        let result = users.checkUserInMemory(name: userName, password: userPassword)
        if result {
            goToTasks()
        } else {
            incorectLabel()
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
                self.incorectLabel()
            }
        }
    }
    
    @objc private func forgetPassword() {
        let alertController = UIAlertController(title: "Forgot password?", message: "Enter user name", preferredStyle: .alert)
        alertController.addTextField()
        
        let doneAction = UIAlertAction(title: "Done", style: .default) { _ in
            self.userName = alertController.textFields![0].text
            guard self.userName != nil else { return }
            let password = users.returnPassword(name: self.userName!)
            let ac = UIAlertController(title: "Your password", message: "\(password)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            ac.addAction(okAction)
            self.present(ac, animated: true)
        }
        
        alertController.addAction(doneAction)
        self.present(alertController,animated: true)
    }
    
    private func signUpButtonTarget(_ target: Any?, action: Selector) {
        signInView.signUpButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    private func signInButtonTarget(_ target: Any?, action: Selector) {
        signInView.signInButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    private func forgetButtonTarget(_ target: Any?, action: Selector) {
        signInView.forgetPasswordButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    private func getName() -> String {
        guard let text = signInView.textFieldName.text else { return "password is empty"}
        return text
    }
    
    private func getPassword() -> String {
        guard let text = signInView.textFieldPassword.text else { return "password is empty"}
        return text
    }
    
    private func incorectLabel() {
        signInView.incorectUserLable.isHidden = !signInView.incorectUserLable.isHidden
    }
}
