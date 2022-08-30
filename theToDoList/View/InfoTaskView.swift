//
//  InfoTaskView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class InfoTaskView: UIView {
    private(set) lazy var backButton: UIButton = {
        let view = UIButton()
        view.setTitle("Back", for: .normal)
        view.backgroundColor = .black
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.setTitleColor(.white, for: .normal)
        return view
    }()

    private(set) lazy var deleteButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "trash"), for: .normal)
        view.backgroundColor = .black
        view.tintColor = .red
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
    }()

    private(set) lazy var doneButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "done"), for: .normal)
        view.backgroundColor = .black
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
    }()

    private(set) lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Some task title"
        view.textColor = .white
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.textAlignment = .center
        view.clipsToBounds = true
        view.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()

    private(set) lazy var startTime: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.textAlignment = .center
        view.layer.borderWidth = 1
        view.clipsToBounds = true
        view.font = UIFont(name: "SystemFont-Regular", size: 20)
        return view
    }()

    private(set) lazy var deadLineTime: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.textAlignment = .center
        view.layer.borderWidth = 1
        view.clipsToBounds = true
        view.font = UIFont(name: "SystemFont-Regular", size: 20)
        return view
    }()

    private lazy var startLabel: UILabel = {
        let view = UILabel()
        view.text = "Started:"
        view.textColor = .black
        view.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()

    private lazy var endLabel: UILabel = {
        let view = UILabel()
        view.text = "DeadLine:"
        view.textColor = .black
        view.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()

    private(set) lazy var descriptionView: UITextView = {
        let view = UITextView()
        view.font = UIFont(name: "Al Nile", size: 20)
        view.isEditable = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()

    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "fon-10.2")
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        titleLabelConstraints()
        descriptionViewConstraints()
        backgroundImageConstarints()
        backButtonConstraints()
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
        backButtonConstraints()
        deleteButtonConstraints()
        doneButtonConstraints()
        deadLineConstarints()
        startTimeConstarints()
        endConstarints()
        startConstarints()
    }
    private func backButtonConstraints() {
        backButton.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.width.equalTo(60)
            make.trailing.equalTo(-15)
        }
    }
    private func deleteButtonConstraints() {
        deleteButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.top)
            make.trailing.equalTo(descriptionView.snp.trailing)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
    }
    private func doneButtonConstraints() {
        doneButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-10)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(100)
        }
    }
    private func titleLabelConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(90)
            make.leading.equalTo(30)
            make.trailing.equalTo(deleteButton.snp.leading).offset(-10)
            make.height.equalTo(40)
        }
    }
    private func descriptionViewConstraints() {
        descriptionView.snp.makeConstraints { make in
            make.top.equalTo(150)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
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
            make.top.equalTo(startLabel.snp.top)
            make.trailing.equalTo(descriptionView.snp.trailing)
            make.height.equalTo(25)
            make.width.equalTo(220)
        }
    }
    private func startConstarints() {
        startLabel.snp.makeConstraints { make in
            make.top.equalTo(descriptionView.snp.bottom).offset(15)
            make.leading.equalTo(descriptionView.snp.leading)
        }
    }
    private func deadLineConstarints() {
        deadLineTime.snp.makeConstraints { make in
            make.top.equalTo(endLabel.snp.top)
            make.trailing.equalTo(descriptionView.snp.trailing)
            make.height.equalTo(25)
            make.width.equalTo(220)
        }
    }
    private func endConstarints() {
        endLabel.snp.makeConstraints { make in
            make.top.equalTo(startLabel.snp.bottom).offset(10)
            make.leading.equalTo(descriptionView.snp.leading)
        }
    }
     private func setViews() {
        self.addSubview(backgroundImage)
        self.addSubview(titleLabel)
        self.addSubview(descriptionView)
        self.addSubview(backButton)
        self.addSubview(deleteButton)
        self.addSubview(doneButton)
        self.addSubview(deadLineTime)
        self.addSubview(startTime)
        self.addSubview(endLabel)
        self.addSubview(startLabel)
    }
}
