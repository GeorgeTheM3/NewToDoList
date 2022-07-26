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
    }
    
    override func loadView() {
        super.loadView()
        self.view = SignInView()
    }
    
    @objc func goToSignUpView() {
        let view = SignUpVC()
        view.modalPresentationStyle = .fullScreen
        present(view, animated: true)
        }
    
}
