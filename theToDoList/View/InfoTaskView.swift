//
//  InfoTaskView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class InfoTaskView: UIView {
    
    private(set) lazy var arrowButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "forwardArrow"), for: .normal)
        return view
    }()
    
    private(set) lazy var deleteButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "close"), for: .normal)
        return view
    }()
    
    private(set) lazy var doneButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "done"), for: .normal)
        return view
    }()
    
    private(set) lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Some task title"
        view.textColor = .white
        view.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()
    
    private(set) lazy var startTime: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.font = UIFont(name: "SystemFont-Regular", size: 20)
        return view
    }()
    
    private(set) lazy var deadLineTime: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.font = UIFont(name: "SystemFont-Regular", size: 20)
        return view
    }()
    
    private lazy var startLabel: UILabel = {
        let view = UILabel()
        view.text = "Started:"
        view.textColor = .white
        view.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()
    
    private lazy var endLabel: UILabel = {
        let view = UILabel()
        view.text = "D-Line:"
        view.textColor = .white
        view.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()
    
    private(set) lazy var descriptionView: UITextView = {
        let view = UITextView()
        view.font = UIFont(name: "Al Nile", size: 20)
        view.isEditable = false
        return view
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "fon")
        return view
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
        deadLineConstarints()
        startTimeConstarints()
        endConstarints()
        startConstarints()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setViews()
        titleLabelConstraints()
        descriptionViewConstraints()
        backgroundImageConstarints()
        arrowButtonConstraints()
        deleteButtonConstraints()
        doneButtonConstraints()
        deadLineConstarints()
        startTimeConstarints()
        endConstarints()
        startConstarints()
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
            make.top.equalTo(150)
            make.leading.equalTo(66)
            make.width.equalTo(264)
            make.height.equalTo(494)
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
            make.bottom.equalTo(-154)
            make.trailing.equalTo(-61)
            make.height.equalTo(50)
        }
    }
    private func startConstarints() {
        startLabel.snp.makeConstraints { make in
            make.bottom.equalTo(-150)
            make.leading.equalTo(65)
            make.height.equalTo(50)
        }
    }
    private func deadLineConstarints() {
        deadLineTime.snp.makeConstraints { make in
            make.bottom.equalTo(-124)
            make.trailing.equalTo(-61)
            make.height.equalTo(50)
        }
    }
    private func endConstarints() {
        endLabel.snp.makeConstraints { make in
            make.bottom.equalTo(-120)
            make.leading.equalTo(65)
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
        self.addSubview(deadLineTime)
        self.addSubview(startTime)
        self.addSubview(endLabel)
        self.addSubview(startLabel)
    }
}
