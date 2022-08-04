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
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont(name: "Al Nile" , size: 12)
        return label
    }()
    
    private lazy var passwordLabel: UILabel = {
        let password = UILabel()
        password.text = "Password"
        password.textColor = .white
        password.translatesAutoresizingMaskIntoConstraints = false
        password.backgroundColor = .clear
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
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var forgetPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forget password", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.titleLabel?.font = UIFont(name: "Al Nile", size: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var incorectUserLable: UILabel = {
        let label = UILabel()
        label.isHidden = true
        label.text = "Incorect username or password"
        label.textColor = .orange
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont(name: "AlNile-bold" , size: 15)
        return label
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let bg = UIImageView()
        bg.image = UIImage(named: "fon")
        bg.translatesAutoresizingMaskIntoConstraints = false
        return bg
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        backgroundImageConstarints()
        nameLabelConstraints()
        textFieldNameConstraints()
        passwordLabelConstraints()
        textFieldPasswordConstraints()
        signUpButtonConstraints()
        forgetPasswordButtonConstraints()
        signInButtonConstraints()
        incorectUserLableConstraints()
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder: Decoder)
        setViews()
        backgroundImageConstarints()
        nameLabelConstraints()
        textFieldNameConstraints()
        passwordLabelConstraints()
        textFieldPasswordConstraints()
        signUpButtonConstraints()
        forgetPasswordButtonConstraints()
        signInButtonConstraints()
        incorectUserLableConstraints()
    }

    private func nameLabelConstraints() {
        self.nameLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.nameLabel.widthAnchor.constraint(equalToConstant: 34).isActive = true
        self.nameLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -515).isActive = true
        self.nameLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    
    private func textFieldNameConstraints() {
        self.textFieldName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.textFieldName.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -61).isActive = true
        self.textFieldName.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -465).isActive = true
        self.textFieldName.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    
    private func passwordLabelConstraints() {
        self.passwordLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.passwordLabel.widthAnchor.constraint(equalToConstant: 56).isActive = true
        self.passwordLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -422).isActive = true
        self.passwordLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    
    private func textFieldPasswordConstraints() {
        self.textFieldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.textFieldPassword.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -61).isActive = true
        self.textFieldPassword.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -372).isActive = true
        self.textFieldPassword.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    
    private func signUpButtonConstraints() {
        self.signUpButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        self.signUpButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        self.signUpButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        self.signUpButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -26).isActive = true
    }
    
    private func forgetPasswordButtonConstraints() {
        self.forgetPasswordButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.forgetPasswordButton.widthAnchor.constraint(equalToConstant: 96).isActive = true
        self.forgetPasswordButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -347).isActive = true
        self.forgetPasswordButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    
    private func signInButtonConstraints() {
        self.signInButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        self.signInButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -80).isActive = true
        self.signInButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        self.signInButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 80).isActive = true
    }
    
    private func incorectUserLableConstraints() {
        self.incorectUserLable.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.incorectUserLable.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -565).isActive = true
        self.incorectUserLable.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 75).isActive = true
    }
    
    private func backgroundImageConstarints() {
        self.backgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        self.backgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    }
    
    private func setViews() {
        self.addSubview(self.backgroundImage)
        self.addSubview(self.signInButton)
        self.addSubview(self.nameLabel)
        self.addSubview(self.passwordLabel)
        self.addSubview(self.textFieldName)
        self.addSubview(self.textFieldPassword)
        self.addSubview(self.signUpButton)
        self.addSubview(self.forgetPasswordButton)
        self.addSubview(self.incorectUserLable)
    }
    
    func signUpButtonTarget(_ target: Any?, action: Selector) {
        signUpButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func signInButtonTarget(_ target: Any?, action: Selector) {
        signInButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func getName() -> String {
        guard let text = textFieldName.text else { return "password is empty"}
        return text
    }
    
    func getPassword() -> String {
        guard let text = textFieldPassword.text else { return "password is empty"}
        return text
    }
    
    func incorectLabel() {
        incorectUserLable.isHidden = !incorectUserLable.isHidden
    }
}

