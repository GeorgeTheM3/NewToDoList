//
//  TasksView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import UIKit
import SnapKit

class TasksView: UIView {
    
    private lazy var addTaskButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add task", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 15)
        return button
    }()
    
    private lazy var addButton: UIButton = {
        let button = UIButton()
        button.setTitle("to info about task", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 15)
        return button
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fon")
        return image
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl()
        sc.insertSegment(withTitle: "Ready", at: 0, animated: true)
        sc.insertSegment(withTitle: "In progress", at: 1, animated: true)
        sc.selectedSegmentIndex = 0
        // i dont know what is this below but its work
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .normal)
        return sc
    }()
    
    private lazy var tableViewTasks: UITableView = {
        let tv = UITableView()
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        backgroundImageConstarints()
        segmentedControlConstraints()
        tableViewTasksConstraints()
        addTaskButtonConstraints()
        addButtonConstraints()
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder: Decoder)
        setViews()
        backgroundImageConstarints()
        segmentedControlConstraints()
        tableViewTasksConstraints()
        addTaskButtonConstraints()
        addButtonConstraints()
    }
    
    
    private func addTaskButtonConstraints() {
        addTaskButton.snp.makeConstraints { make in
            make.bottom.equalTo(-65)
            make.leading.equalTo(80)
            make.trailing.equalTo(-81)
            make.height.equalTo(55)
        }
    }
    
    // just for test info task view
    private func addButtonConstraints() {
        addButton.snp.makeConstraints { make in
            make.bottom.equalTo(-165)
            make.leading.equalTo(80)
            make.trailing.equalTo(-81)
            make.height.equalTo(55)
        }
    }
    
    private func segmentedControlConstraints() {
        segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(73)
            make.leading.equalTo(18)
            make.trailing.equalTo(-18)
            make.height.equalTo(26)
        }
    }
    
    private func tableViewTasksConstraints() {
        tableViewTasks.snp.makeConstraints { make in
            make.top.equalTo(133)
            make.width.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(400)
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
    
    func setViews() {
        self.addSubview(backgroundImage)
        self.addSubview(addTaskButton)
        self.addSubview(segmentedControl)
        self.addSubview(tableViewTasks)
        self.addSubview(addButton)
    }
    
    func toAddTaskView(_ target: Any?, action: Selector) {
        addTaskButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func toInfoButton(_ target: Any?, action: Selector) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
}



