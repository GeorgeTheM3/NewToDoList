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

    private(set) lazy var enterYourNameTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private(set) lazy var enterYourPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private(set) lazy var createButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "fon-8.1")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setConstraintsViews()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addViews()
        setConstraintsViews()
    }

    private func addViews() {
        addSubview(backgroundImage)
        addSubview(createButton)
        addSubview(nameLabel)
        addSubview(passwordLabel)
        addSubview(enterYourNameTextField)
        addSubview(enterYourPasswordTextField)
        addSubview(createButton)
    }

    private func setConstraintsViews() {
        NSLayoutConstraint.activate([
        nameLabel.heightAnchor.constraint(equalToConstant: 20),
        nameLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -515),
        nameLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        enterYourNameTextField.heightAnchor.constraint(equalToConstant: 50),
        enterYourNameTextField.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -61),
        enterYourNameTextField.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -465),
        enterYourNameTextField.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        passwordLabel.heightAnchor.constraint(equalToConstant: 20),
        passwordLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -422),
        passwordLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        enterYourPasswordTextField.heightAnchor.constraint(equalToConstant: 50),
        enterYourPasswordTextField.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -61),
        enterYourPasswordTextField.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -372),
        enterYourPasswordTextField.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 65),

        createButton.heightAnchor.constraint(equalToConstant: 42),
        createButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -120),
        createButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
        createButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 120),

        backgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor),
        backgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor)
        ])
    }
}
