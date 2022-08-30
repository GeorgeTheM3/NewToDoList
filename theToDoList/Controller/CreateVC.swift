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
    private var createView: CreateView {
        guard let view = self.view as? CreateView else { return CreateView()}
        return view
    }
    override func viewDidLoad() {
        super.viewDidLoad()
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
            errorUser()
        } else {
            users.appendNewUser(name: userName, password: userPassword)
            goToTasks()
        }
    }

    private func errorUser() {
    let alertController = UIAlertController(title: "Try another name", message: "user with the same name already exists", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }

    private func goToTasks() {
        let controller = TasksVC()
//        controller.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(controller, animated: true)
    }

    private func signUpButtonTarget(_ target: Any?, action: Selector) {
        createView.createButton.addTarget(target, action: action, for: .touchUpInside)
    }

    private func getName() -> String {
        guard let text = createView.enterYourNameTextField.text else { return ""}
        return text
    }

    private func getPassword() -> String {
        guard let text = createView.enterYourPasswordTextField.text else { return ""}
        return text
    }

    private func switchSignUpButton() {
        createView.createButton.isEnabled = !createView.createButton.isEnabled
    }
}
