//
//  SingUpVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

class SignUpVC: UIViewController {
    
    private var signUpView: SignUpView {
        return self.view as! SignUpView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.backButtonTarget(self, action: #selector(goBack))
    }
    
    override func loadView() {
        super.loadView()
        self.view = SignUpView()
    }
    
    @objc private func goBack() {
        dismiss(animated: true)
    }
}
