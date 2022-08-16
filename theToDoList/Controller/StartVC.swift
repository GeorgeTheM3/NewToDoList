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
        return self.view as! StartView
    }
    
    override func loadView() {
        super.loadView()
        self.view = StartView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButtonTarget(self, action: #selector(goToSignInView))
        createNewAccButtonTarget(self, action: #selector(goToSignUpView))
        
    }
    
    @objc private func goToSignInView() {
        let view = SignInVC()
        navigationController?.pushViewController(view, animated: true)
        }
    
    @objc private func goToSignUpView() {
        let view = SignUpVC()
        navigationController?.pushViewController(view, animated: true)
        }
    
    
    private func signInButtonTarget(_ target: Any?, action: Selector) {
        startView.signInButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    private func createNewAccButtonTarget(_ target: Any?, action: Selector) {
        startView.newAccountButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

