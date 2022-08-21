//
//  ViewController.swift
//  theToDoList
//
//  Created by Георгий Матченко on 24.07.2022.
//

import UIKit

class SignInView: UIView {
    private lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.text = "Name"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.font = UIFont(name: "AlNile-Bold", size: 15)
        return view
    }()

    private lazy var passwordLabel: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.font = UIFont(name: "AlNile-Bold", size: 15)
        return view
    }()

    private(set) lazy var textFieldName: UITextField = {
        let view = UITextField()
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private(set) lazy var textFieldPassword: UITextField = {
        let view = UITextField()
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.isSecureTextEntry = true
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private(set) lazy var forgetPasswordButton: UIButton = {
        let view = UIButton()
        view.setTitle("Forget password", for: .normal)
        view.setTitleColor(.orange, for: .normal)
        view.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private(set) lazy var signInButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 20
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private(set) lazy var incorectUserLable: UILabel = {
        let view = UILabel()
        view.isHidden = true
        view.text = "Incorect username or password"
        view.textColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.font = UIFont(name: "AlNile-bold", size: 15)
        return view
    }()

    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "fon-8.1")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private(set) lazy var backButton: UIButton = {
        let view = UIButton()
        view.setTitle("Close", for: .normal)
        view.backgroundColor = .black
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.setTitleColor(.white, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        backgroundImageConstarints()
        nameLabelConstraints()
        textFieldNameConstraints()
        passwordLabelConstraints()
        textFieldPasswordConstraints()
        forgetPasswordButtonConstraints()
        signInButtonConstraints()
        incorectUserLableConstraints()
        backButtonConstraints()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setViews()
        backgroundImageConstarints()
        nameLabelConstraints()
        textFieldNameConstraints()
        passwordLabelConstraints()
        textFieldPasswordConstraints()
        forgetPasswordButtonConstraints()
        signInButtonConstraints()
        incorectUserLableConstraints()
        backButtonConstraints()
    }
    private func backButtonConstraints() {
        backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        backButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
    }
    private func nameLabelConstraints() {
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -515).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    private func textFieldNameConstraints() {
        textFieldName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textFieldName.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -61).isActive = true
        textFieldName.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -465).isActive = true
        textFieldName.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    private func passwordLabelConstraints() {
        passwordLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -422).isActive = true
        passwordLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    private func textFieldPasswordConstraints() {
        textFieldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textFieldPassword.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -61).isActive = true
        textFieldPassword.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -372).isActive = true
        textFieldPassword.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    private func forgetPasswordButtonConstraints() {
        forgetPasswordButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        forgetPasswordButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -347).isActive = true
        forgetPasswordButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65).isActive = true
    }
    private func signInButtonConstraints() {
        signInButton.heightAnchor.constraint(equalToConstant: 42).isActive = true
        signInButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -120).isActive = true
        signInButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        signInButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 120).isActive = true
    }
    private func incorectUserLableConstraints() {
        incorectUserLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        incorectUserLable.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -565).isActive = true
        incorectUserLable.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 75).isActive = true
    }
    private func backgroundImageConstarints() {
        backgroundImage.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        backgroundImage.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    private func setViews() {
        addSubview(backgroundImage)
        addSubview(signInButton)
        addSubview(nameLabel)
        addSubview(passwordLabel)
        addSubview(textFieldName)
        addSubview(textFieldPassword)
        addSubview(forgetPasswordButton)
        addSubview(incorectUserLable)
        addSubview(backButton)
    }
}
