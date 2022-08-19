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
        let view = UIButton()
        view.setTitle("Back", for: .normal)
        view.backgroundColor = .black
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.setTitleColor(.white, for: .normal)
        return view
    }()
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "fon-10.2")
        return view
    }()
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Title"
        view.textColor = .black
        view.backgroundColor = .clear
        view.font = UIFont(name: "AlNile-Bold", size: 15)
        return view
    }()
    private lazy var deadlineLabel: UILabel = {
        let view = UILabel()
        view.text = "Deadline"
        view.textColor = .black
        view.backgroundColor = .clear
        view.font = UIFont(name: "AlNile-Bold", size: 15)
        return view
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
        let view = UITextField()
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.placeholder = "New task"
        view.borderStyle = .roundedRect
        return view
    }()
    private(set) lazy var textViewDescription: UITextView = {
        let view = UITextView()
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.font = UIFont(name: "SystemFont-Regular", size: 20)
        return view
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
        let view = UIDatePicker()
        return view
    }()
    private(set) lazy var datePickerStart: UIDatePicker = {
        let view = UIDatePicker()
        view.isHidden = true
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        backButtonConstraints()
        backgroundImageConstarints()
        titleLabelConstraints()
        descriptionLabelConstraints()
        textFieldTitleConstraints()
        textViewDescriptionLabelConstraints()
        plusButtonConstraints()
        datePickerConstraints()
        deadlineLebaleConstraints()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setViews()
        backButtonConstraints()
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
    private func backButtonConstraints() {
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.leading.equalTo(15)
            make.width.equalTo(70)
        }
    }
    private func titleLabelConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(60)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
            make.height.equalTo(20)
        }
    }
    private func textFieldTitleConstraints() {
        textfieldTitle.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
            make.height.equalTo(50)
            make.width.equalTo(264)
        }
    }
    private func deadlineLebaleConstraints() {
        deadlineLabel.snp.makeConstraints { make in
            make.top.equalTo(textfieldTitle.snp.bottom).offset(20)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
            make.height.equalTo(20)
        }
    }
    private func datePickerConstraints() {
        datePicker.snp.makeConstraints { make in
            make.trailing.equalTo(textfieldTitle.snp.trailing)
            make.height.equalTo(40)
            make.centerY.equalTo(deadlineLabel.snp.centerY)
        }
    }
    private func descriptionLabelConstraints() {
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(deadlineLabel.snp.bottom).offset(20)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
            make.height.equalTo(20)
            make.width.equalTo(63)
        }
    }
    private func textViewDescriptionLabelConstraints() {
        textViewDescription.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
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
