//
//  StartVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 16.08.2022.
//

import Foundation
import UIKit

class StartVC: UIViewController {
    private var startView: StartView {
        guard let view = self.view as? StartView else { return StartView()}
        return view
    }
    override func loadView() {
        super.loadView()
        self.view = StartView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButtonTarget(self, action: #selector(goToSignInView))
        createNewAccButtonTarget(self, action: #selector(goToSignUpView))
//        для примера
        users.appendNewUser(name: "2", password: "3")
        addExampleTasks()
    }
    @objc private func goToSignInView() {
        let controller = SignInVC()
        navigationController?.pushViewController(controller, animated: true)
    }

    @objc private func goToSignUpView() {
        let controller = CreateVC()
        navigationController?.pushViewController(controller, animated: true)
    }

    private func signInButtonTarget(_ target: Any?, action: Selector) {
        startView.signInButton.addTarget(target, action: action, for: .touchUpInside)
    }
    private func createNewAccButtonTarget(_ target: Any?, action: Selector) {
        startView.createNewAccountButton.addTarget(target, action: action, for: .touchUpInside)
    }
}
