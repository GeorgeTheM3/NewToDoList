//
//  SingUpVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

class CreateVC: UIViewController {
    private lazy var userName: String = ""
    private lazy var userPassword: String = ""
    private var signUpView: CreateView {
        guard let view = self.view as? CreateView else { return CreateView()}
        return view
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonTarget(self, action: #selector(goBack))
        signUpButtonTarget(self, action: #selector(appendUser))
    }
    override func loadView() {
        super.loadView()
        self.view = CreateView()
    }
    @objc private func goBack() {
        dismiss(animated: true)
    }
    private func getUserNameAndPassword() {
        userName = getName()
        userPassword = getPassword()
    }
    @objc private func appendUser() {
        getUserNameAndPassword()
        checkUser()
    }
    private func checkUser() {
        let result = users.checkUserInMemory(name: userName)
        if result {
            return
        } else {
            users.appendNewUser(name: userName, password: userPassword)
            goToTasks()
        }
    }

    private func goToTasks() {
        let view = TasksVC()
        view.modalPresentationStyle = .fullScreen
        present(view, animated: true)
    }
    private func backButtonTarget(_ target: Any?, action: Selector) {
        signUpView.backButton.addTarget(target, action: action, for: .touchUpInside)
    }
    private func signUpButtonTarget(_ target: Any?, action: Selector) {
        signUpView.signUpButton.addTarget(target, action: action, for: .touchUpInside)
    }
    private func getName() -> String {
        guard let text = signUpView.textFieldName.text else { return ""}
        return text
    }
    private func getPassword() -> String {
        guard let text = signUpView.textFieldPassword.text else { return ""}
        return text
    }
    private func switchSignUpButton() {
        signUpView.signUpButton.isEnabled = !signUpView.signUpButton.isEnabled
    }
}
