//
//  SignInVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import Foundation
import UIKit

class SignInVC: UIViewController {
    
    private var signInView: SignInView {
        return self.view as! SignInView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInView.signUpButtonTarget(self, action: #selector(goToSignUpView))
        signInView.signInButtonTarget(self, action: #selector(goToTasks))
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
    
    @objc private func goToTasks() {
        let view = TasksVC()
        view.modalPresentationStyle = .fullScreen
        present(view, animated: true)
        }
}
