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
        signInView.signUpButtonTarget(self, action: #selector(goToSignUpView))
        signInView.signInButtonTarget(self, action: #selector(checkUser))
        signInView.forgetButtonTarget(self, action: #selector(forgetPassword))
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
        userName = signInView.getName()
        userPassword = signInView.getPassword()
    }
    
    @objc private func checkUser() {
//        getUserNameAndPassword()
//        let result = users.checkUserInMemory(name: userName, password: userPassword)
//        if result {
//            goToTasks()
//        } else {
//            signInView.incorectLabel()
//            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
//                self.signInView.incorectLabel()
//            }
//        }
        goToTasks()
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
}
