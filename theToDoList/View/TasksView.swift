//
//  TasksView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import UIKit
import SnapKit

class TasksView: UIView {
    
    private(set) lazy var addTaskButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add task", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        return button
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fon-9.2")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private(set)lazy var segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl()
        sc.insertSegment(withTitle: "Ready", at: 0, animated: true)
        sc.insertSegment(withTitle: "In progress", at: 1, animated: true)
        sc.selectedSegmentIndex = 1
        // i dont know what is this below but its work
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .normal)
        return sc
    }()
    
    lazy var tableViewTasks: UITableView = {
        let tv = UITableView()
        tv.register(CustomCell.self, forCellReuseIdentifier: "cell")
        tv.backgroundColor = UIColor(white: 1, alpha: 0.3)
//        tv.backgroundView = UIImageView(image: UIImage(named: "fon-10.1"))
//        tv.backgroundView?.contentMode = .scaleAspectFill
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        backgroundImageConstarints()
        segmentedControlConstraints()
        tableViewTasksConstraints()
        addTaskButtonConstraints()
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder: Decoder)
        setViews()
        backgroundImageConstarints()
        segmentedControlConstraints()
        tableViewTasksConstraints()
        addTaskButtonConstraints()
    }
    
    
    private func addTaskButtonConstraints() {
        addTaskButton.snp.makeConstraints { make in
            make.bottom.equalTo(-65)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(120)
            make.height.equalTo(42)
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
            make.bottom.equalTo(addTaskButton.snp.top).offset(-20)
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
    }
}


