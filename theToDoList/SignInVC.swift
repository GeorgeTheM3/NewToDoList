//
//  ViewController.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

class SignInVC: UIViewController {
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.font = UIFont(name: "Al Nile" , size: 12)
        return label
    }()
    
    private lazy var passwordLabel: UILabel = {
        let password = UILabel()
        password.text = "Password"
        password.textColor = .black
        password.translatesAutoresizingMaskIntoConstraints = false
        password.backgroundColor = .white
        password.font = UIFont(name: "Al Nile", size: 12)
        return password
    }()
    
    private lazy var textFieldName: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(toSignUpVC), for: .touchUpInside)
        return button
    }()
    
    private lazy var forgetPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forget password", for: .normal)
        button.setTitleColor(UIColor(red: 0.33, green: 0.56, blue: 0.83, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Al Nile", size: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(red: 0.98, green: 0.91, blue: 0.91, alpha: 1)
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameLabel)
        view.addSubview(passwordLabel)
        view.addSubview(textFieldName)
        view.addSubview(textFieldPassword)
        view.addSubview(signUpButton)
        view.addSubview(forgetPasswordButton)
        view.addSubview(signInButton)
        setupConstraints()
    }
    
    func setupConstraints() {
        nameLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 34).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -515).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 65).isActive = true

        textFieldName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textFieldName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -61).isActive = true
        textFieldName.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -465).isActive = true
        textFieldName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 65).isActive = true
    
        passwordLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: 56).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -422).isActive = true
        passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 65).isActive = true
        
        textFieldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textFieldPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -61).isActive = true
        textFieldPassword.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -372).isActive = true
        textFieldPassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 65).isActive = true
        
        signUpButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 56).isActive = true

        signUpButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 49).isActive = true
        signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -26).isActive = true
        
        forgetPasswordButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        forgetPasswordButton.widthAnchor.constraint(equalToConstant: 96).isActive = true
        forgetPasswordButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -347).isActive = true
        forgetPasswordButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 65).isActive = true
        
        signInButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        signInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80).isActive = true
        signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        signInButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80).isActive = true
        
    }
    
    @objc func toSignUpVC() {
        print("Go to SignUp view controller")
        let vc = SingUpVC()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc,animated: true, completion: nil)
    }
}

