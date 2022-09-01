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
        label.backgroundColor = .clear
        label.font = UIFont(name: "AlNile-Bold", size: 15)
        return label
    }()

    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont(name: "AlNile-Bold", size: 15)
        return label
    }()

    private(set) lazy var enterYourNameTaxtField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private(set) lazy var enterYourPaswordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private(set) lazy var forgetPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forget password", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private(set) lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private(set) lazy var incorectUserLable: UILabel = {
        let label = UILabel()
        label.isHidden = true
        label.text = "Incorect username or password"
        label.textColor = .orange
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont(name: "AlNile-bold", size: 15)
        return label
    }()

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "fon-8.1")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        setConstraintsViews()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setViews()
        setConstraintsViews()
    }

    private func setViews() {
        addSubview(backgroundImageView)
        addSubview(signInButton)
        addSubview(nameLabel)
        addSubview(passwordLabel)
        addSubview(enterYourNameTaxtField)
        addSubview(enterYourPaswordTextField)
        addSubview(forgetPasswordButton)
        addSubview(incorectUserLable)
    }

    private func setConstraintsViews() {
        NSLayoutConstraint.activate([
            // переделать констрейнты// стыдоба
            // переделать констрейнты// стыдоба
            // переделать констрейнты// стыдоба
            // переделать констрейнты// стыдоба
            // переделать констрейнты// стыдоба
            // переделать констрейнты// стыдоба
        nameLabel.heightAnchor.constraint(equalToConstant: 20),
        nameLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -515),
        nameLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        enterYourNameTaxtField.heightAnchor.constraint(equalToConstant: 50),
        enterYourNameTaxtField.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -61),
        enterYourNameTaxtField.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -465),
        enterYourNameTaxtField.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        passwordLabel.heightAnchor.constraint(equalToConstant: 20),
        passwordLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -422),
        passwordLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        enterYourPaswordTextField.heightAnchor.constraint(equalToConstant: 50),
        enterYourPaswordTextField.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -61),
        enterYourPaswordTextField.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -372),
        enterYourPaswordTextField.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        forgetPasswordButton.heightAnchor.constraint(equalToConstant: 15),
        forgetPasswordButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -347),
        forgetPasswordButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        signInButton.heightAnchor.constraint(equalToConstant: 42),
        signInButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -120),
        signInButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
        signInButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 120),

        incorectUserLable.heightAnchor.constraint(equalToConstant: 20),
        incorectUserLable.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -565),
        incorectUserLable.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 75),

        backgroundImageView.heightAnchor.constraint(equalTo: heightAnchor),
        backgroundImageView.widthAnchor.constraint(equalTo: widthAnchor)
        ])
    }
}
