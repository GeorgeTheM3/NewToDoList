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
    }
    
    override func loadView() {
        super.loadView()
        self.view = signInView
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
