//
//  ViewController.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

class SignInView: UIView {
    
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
//        button.addTarget(self, action: #selector(toSignUpVC), for: .touchUpInside)
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        setupConstraints()
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder: Decoder)
        setViews()
        setupConstraints()
    }
    
    
    private func setupConstraints() {
        self.nameLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.nameLabel.widthAnchor.constraint(equalToConstant: 34).isActive = true
        self.nameLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -515).isActive = true
        self.nameLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true

        self.textFieldName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.textFieldName.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -61).isActive = true
        self.textFieldName.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -465).isActive = true
        self.textFieldName.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    
        self.passwordLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.passwordLabel.widthAnchor.constraint(equalToConstant: 56).isActive = true
        self.passwordLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -422).isActive = true
        self.passwordLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
        
        self.textFieldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.textFieldPassword.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -61).isActive = true
        self.textFieldPassword.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -372).isActive = true
        self.textFieldPassword.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
        
        self.signUpButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        self.signUpButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        self.signUpButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 49).isActive = true
        self.signUpButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -26).isActive = true
        
        self.forgetPasswordButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.forgetPasswordButton.widthAnchor.constraint(equalToConstant: 96).isActive = true
        self.forgetPasswordButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -347).isActive = true
        self.forgetPasswordButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
        
        self.signInButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        self.signInButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -80).isActive = true
        self.signInButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -80).isActive = true
        self.signInButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 80).isActive = true
        
    }
    
    func setViews() {
        self.addSubview(self.signInButton)
        self.addSubview(self.nameLabel)
        self.addSubview(self.passwordLabel)
        self.addSubview(self.textFieldName)
        self.addSubview(self.textFieldPassword)
        self.addSubview(self.signUpButton)
        self.addSubview(self.forgetPasswordButton)
    }
}

