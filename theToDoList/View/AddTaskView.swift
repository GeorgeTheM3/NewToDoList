//
//  AddTaskView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class AddTaskView: UIView {
    
    private lazy var arrowButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "backArrowWhite"), for: .normal)
        return button
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fon")
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.textColor = .white
        label.backgroundColor = .clear
        label.font = UIFont(name: "Al Nile" , size: 12)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let password = UILabel()
        password.text = "Description"
        password.textColor = .white
        password.backgroundColor = .clear
        password.font = UIFont(name: "Al Nile", size: 12)
        return password
    }()
    
    private(set) lazy var textfieldTitle: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    private lazy var startTimeTextField: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.borderStyle = .roundedRect
        tf.placeholder = "Enter start date"
        return tf
    }()
    
    private lazy var deadLineTextField: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.borderStyle = .roundedRect
        tf.placeholder = "Enter deadline date"
        return tf
    }()
    
    private lazy var textViewDescription: UITextView = {
        let tv = UITextView()
        tv.layer.cornerRadius = 5
        tv.layer.borderWidth = 1
        tv.font = UIFont(name: "Al Nile", size: 20)
        return tv
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 50)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        arrowButtonConstraints()
        backgroundImageConstarints()
        titleLabelConstraints()
        descriptionLabelConstraints()
        textFieldTitleConstraints()
        textViewDescriptionLabelConstraints()
        plusButtonConstraints()
        textFieldDeadLineConstraints()
        textFieldStartTimeConstraints()
        
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder: Decoder)
        setViews()
        arrowButtonConstraints()
        backgroundImageConstarints()
        titleLabelConstraints()
        descriptionLabelConstraints()
        textFieldTitleConstraints()
        textViewDescriptionLabelConstraints()
        plusButtonConstraints()
        textFieldDeadLineConstraints()
        textFieldStartTimeConstraints()
        
    }
    
    private func setViews() {
        self.addSubview(backgroundImage)
        self.addSubview(arrowButton)
        self.addSubview(titleLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(textfieldTitle)
        self.addSubview(textViewDescription)
        self.addSubview(plusButton)
        self.addSubview(deadLineTextField)
        self.addSubview(startTimeTextField)
    }
    
    private func arrowButtonConstraints() {
        arrowButton.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.leading.equalTo(15)
        }
    }
    
    private func titleLabelConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.bottom.equalTo(-717)
            make.leading.equalTo(63)
            make.height.equalTo(15)
            make.width.equalTo(25)
        }
    }
    
    private func descriptionLabelConstraints() {
        descriptionLabel.snp.makeConstraints { make in
            make.bottom.equalTo(-631)
            make.leading.equalTo(63)
            make.height.equalTo(15)
            make.width.equalTo(63)
        }
    }
    
    private func textFieldTitleConstraints() {
        textfieldTitle.snp.makeConstraints { make in
            make.bottom.equalTo(-667)
            make.leading.equalTo(63)
            make.height.equalTo(50)
            make.width.equalTo(264)
        }
    }
    
    private func textViewDescriptionLabelConstraints() {
        textViewDescription.snp.makeConstraints { make in
            make.bottom.equalTo(-300)
            make.leading.equalTo(63)
            make.height.equalTo(327)
            make.width.equalTo(264)
        }
    }
    
    private func backgroundImageConstarints() {
        backgroundImage.snp.makeConstraints { make in
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
    
    private func plusButtonConstraints() {
        plusButton.snp.makeConstraints { make in
            make.bottom.equalTo(-65)
            make.leading.equalTo(80)
            make.trailing.equalTo(-81)
            make.height.equalTo(55)
        }
    }
    
    private func textFieldStartTimeConstraints() {
        startTimeTextField.snp.makeConstraints { make in
            make.bottom.equalTo(-235)
            make.leading.equalTo(63)
            make.trailing.equalTo(-63)
            make.height.equalTo(55)
        }
    }
    
    private func textFieldDeadLineConstraints() {
        deadLineTextField.snp.makeConstraints { make in
            make.bottom.equalTo(-170)
            make.leading.equalTo(63)
            make.trailing.equalTo(-63)
            make.height.equalTo(55)
        }
    }
    
    func backButton(_ target: Any?, action: Selector) {
        arrowButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func plusButton(_ target: Any?, action: Selector) {
        plusButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func returnTitle() -> String {
//        ???????
        guard textfieldTitle.text?.isEmpty == false else {return "No title"}
        return textfieldTitle.text!
    }
    
    func returnDiscription() -> String? {
        return textViewDescription.text ?? "No description"
    }
    
    func returnStartTime() -> String? {
//        ????
        guard startTimeTextField.text?.isEmpty == false else {return nil}
        return startTimeTextField.text
    }
    
    func returnDeadLine() -> String? {
//        вью же не может проверять пустая она или нет?
        guard deadLineTextField.text?.isEmpty == false else {return nil}
        return deadLineTextField.text
    }
}
