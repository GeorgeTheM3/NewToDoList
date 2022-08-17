//
//  SignUpVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 25.07.2022.
//

import UIKit

class CreateView: UIView {
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont(name: "Al Nile" , size: 12)
        return label
    }()
    
    private lazy var passwordLabel: UILabel = {
        let password = UILabel()
        password.text = "Password"
        password.textColor = .black
        password.translatesAutoresizingMaskIntoConstraints = false
        password.backgroundColor = .clear
        password.font = UIFont(name: "Al Nile", size: 12)
        return password
    }()
    
    private(set) lazy var textFieldName: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private(set) lazy var textFieldPassword: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private(set) lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private(set) lazy var backButton: UIButton = {
        let button = UIButton()
//        button.setImage(UIImage(named: "backArrowWhite"), for: .normal)
        button.setTitle("Close", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let bg = UIImageView()
        bg.image = UIImage(named: "fon-8.1")
        bg.contentMode = .scaleAspectFill
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
        backButtonConstraints()
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
        backButtonConstraints()
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
        self.signUpButton.heightAnchor.constraint(equalToConstant: 42).isActive = true
        self.signUpButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -120).isActive = true
        self.signUpButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        self.signUpButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 120).isActive = true
    }
    
    private func backButtonConstraints() {
        self.backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        self.backButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
    }
    
    private func backgroundImageConstarints() {
        self.backgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        self.backgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    }
    
    func setViews() {
        self.addSubview(self.backgroundImage)
        self.addSubview(self.signUpButton)
        self.addSubview(self.nameLabel)
        self.addSubview(self.passwordLabel)
        self.addSubview(self.textFieldName)
        self.addSubview(self.textFieldPassword)
        self.addSubview(self.signUpButton)
        self.addSubview(self.backButton)
    }
}
