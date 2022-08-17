//
//  AddTaskView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class AddTaskView: UIView {
    
    private(set) lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Close", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fon-10.2")
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.textColor = .black
        label.backgroundColor = .clear
        label.font = UIFont(name: "AlNile-Bold" , size: 15)
        return label
    }()
    
    private lazy var deadlineLabel: UILabel = {
        let label = UILabel()
        label.text = "Deadline"
        label.textColor = .black
        label.backgroundColor = .clear
        label.font = UIFont(name: "AlNile-Bold" , size: 15)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let password = UILabel()
        password.text = "Description"
        password.textColor = .black
        password.backgroundColor = .clear
        password.font = UIFont(name: "AlNile-Bold", size: 15)
        return password
    }()
    
    private(set) lazy var textfieldTitle: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 5
        tf.layer.borderWidth = 1
        tf.placeholder = "New task"
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    private(set) lazy var textViewDescription: UITextView = {
        let tv = UITextView()
        tv.layer.cornerRadius = 5
        tv.layer.borderWidth = 1
        tv.font = UIFont(name: "SystemFont-Regular", size: 20)
        return tv
    }()
    
    private(set) lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        return button
    }()
    
    private(set) lazy var datePicker: UIDatePicker = {
        let dp = UIDatePicker()
        return dp
    }()
    
    private(set) lazy var datePickerStart: UIDatePicker = {
        let dp = UIDatePicker()
        dp.isHidden = true
        return dp
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
        datePickerConstraints()
        deadlineLebaleConstraints()
        
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
        datePickerConstraints()
        deadlineLebaleConstraints()
    }
    
    private func setViews() {
        self.addSubview(backgroundImage)
        self.addSubview(closeButton)
        self.addSubview(titleLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(textfieldTitle)
        self.addSubview(textViewDescription)
        self.addSubview(plusButton)
        self.addSubview(datePicker)
        addSubview(deadlineLabel)
        
    }
    
    private func arrowButtonConstraints() {
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.leading.equalTo(15)
        }
    }
    
    private func titleLabelConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(60)
            make.leading.equalTo(63)
            make.trailing.equalTo(-63)
            make.height.equalTo(20)
        }
    }

    private func textFieldTitleConstraints() {
        textfieldTitle.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom)
            make.leading.equalTo(63)
            make.trailing.equalTo(-63)
            make.height.equalTo(50)
            make.width.equalTo(264)
        }
    }
    
    private func deadlineLebaleConstraints() {
        deadlineLabel.snp.makeConstraints { make in
            make.top.equalTo(textfieldTitle.snp.bottom).offset(20)
            make.leading.equalTo(63)
            make.trailing.equalTo(-63)
            make.height.equalTo(20)
        }
    }
    
    private func datePickerConstraints() {
        datePicker.snp.makeConstraints { make in
            make.top.equalTo(deadlineLabel.snp.bottom)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
        }
    }
    
    private func descriptionLabelConstraints() {
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(datePicker.snp.bottom).offset(20)
            make.leading.equalTo(63)
            make.trailing.equalTo(-63)
            make.height.equalTo(20)
            make.width.equalTo(63)
        }
    }
    
    private func textViewDescriptionLabelConstraints() {
        textViewDescription.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom)
            make.leading.equalTo(63)
            make.trailing.equalTo(-63)
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
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(120)
            make.height.equalTo(42)
        }
    }
}
