//
//  InfoTaskView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class InfoTaskView: UIView {
    
    private lazy var arrowButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "forwardArrow"), for: .normal)
        return button
    }()
    
    private lazy var deleteButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "close"), for: .normal)
        return button
    }()
    
    private lazy var doneButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "done"), for: .normal)
        return button
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Some task title"
        label.textColor = .white
        label.font = UIFont(name: "AlNile-Bold", size: 20)
        return label
    }()
    
    private lazy var startTime: UILabel = {
        let label = UILabel()
        label.text = "Start time"
        label.textColor = .white
        label.font = UIFont(name: "AlNile-Bold", size: 20)
        return label
    }()
    
    lazy var deadLine: UILabel = {
        let label = UILabel()
        label.text = "Dead line"
        label.textColor = .white
        label.font = UIFont(name: "AlNile-Bold", size: 20)
        return label
    }()
    
    private lazy var descriptionView: UITextView = {
        let tv = UITextView()
        tv.text = "A lot of words and something else bla bla bla"
        tv.font = UIFont(name: "Al Nile", size: 20)
        tv.isEditable = false
        return tv
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let bg = UIImageView()
        bg.image = UIImage(named: "fon")
        return bg
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        titleLabelConstraints()
        descriptionViewConstraints()
        backgroundImageConstarints()
        arrowButtonConstraints()
        deleteButtonConstraints()
        doneButtonConstraints()
        deadLineImageConstarints()
        startTimeConstarints()
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder: Decoder)
        setViews()
        titleLabelConstraints()
        descriptionViewConstraints()
        backgroundImageConstarints()
        arrowButtonConstraints()
        deleteButtonConstraints()
        doneButtonConstraints()
        deadLineImageConstarints()
        startTimeConstarints()
    }
    
    private func arrowButtonConstraints() {
        arrowButton.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.trailing.equalTo(-15)
        }
    }
    
    private func deleteButtonConstraints() {
        deleteButton.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.trailing.equalTo(-60)
        }
    }
    
    private func doneButtonConstraints() {
        doneButton.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.trailing.equalTo(-120)
        }
    }
    
    private func titleLabelConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(90)
            make.leading.equalTo(66)
            make.width.equalTo(186)
            make.height.equalTo(48)
        }
    }
    
    private func descriptionViewConstraints() {
        descriptionView.snp.makeConstraints { make in
            make.top.equalTo(200)
            make.leading.equalTo(66)
            make.width.equalTo(264)
            make.height.equalTo(594)
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
    
    private func startTimeConstarints() {
        startTime.snp.makeConstraints { make in
            make.top.equalTo(135)
            make.leading.equalTo(66)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
    private func deadLineImageConstarints() {
        deadLine.snp.makeConstraints { make in
            make.top.equalTo(160)
            make.leading.equalTo(66)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
     private func setViews() {
        self.addSubview(backgroundImage)
        self.addSubview(titleLabel)
        self.addSubview(descriptionView)
        self.addSubview(arrowButton)
        self.addSubview(deleteButton)
        self.addSubview(doneButton)
        self.addSubview(deadLine)
        self.addSubview(startTime)
    }
    
    func backButton(_ target: Any?, action: Selector) {
        arrowButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func deleteButton(_ target: Any?, action: Selector) {
        deleteButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func doneButton(_ target: Any?, action: Selector) {
        doneButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func setViewWithContent(title: String, description: String?) {
        titleLabel.text = title
        descriptionView.text = description
    }
    
    func turnOffButton() {
        doneButton.isEnabled = false
    }
}
