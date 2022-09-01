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

    private(set) lazy var logOutButton: UIButton = {
        let view = UIButton()
        return view
    }()

    private lazy var logOutImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "person.crop.circle.fill.badge.xmark")
        view.tintColor = .white
        return view
    }()

    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fon-9.2")
        image.contentMode = .scaleAspectFill
        return image
    }()

    private(set)lazy var segmentedControl: UISegmentedControl = {
        let view = UISegmentedControl()
        view.insertSegment(withTitle: "Ready", at: 0, animated: true)
        view.insertSegment(withTitle: "In progress", at: 1, animated: true)
        view.selectedSegmentIndex = 1
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .normal)
        return view
    }()

    private(set) lazy var tableViewTasks: UITableView = {
        let view = UITableView()
        view.register(CustomCell.self, forCellReuseIdentifier: "cell")
        view.backgroundColor = UIColor(white: 1, alpha: 0.3)
        return view
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
        addSubview(addTaskButton)
        addSubview(segmentedControl)
        addSubview(tableViewTasks)
        addSubview(logOutImage)
        addSubview(logOutButton)
    }

    private func setConstraintsViews() {
        addTaskButton.snp.makeConstraints { make in
            make.bottom.equalTo(-65)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(120)
            make.height.equalTo(42)
        }
        logOutButton.snp.makeConstraints { make in
            make.top.equalTo(segmentedControl.snp.top)
            make.trailing.equalTo(-10)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        logOutImage.snp.makeConstraints { make in
            make.top.equalTo(segmentedControl.snp.top)
            make.trailing.equalTo(-20)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.leading.equalTo(18)
            make.trailing.equalTo(-80)
            make.height.equalTo(40)
        }
        tableViewTasks.snp.makeConstraints { make in
            make.top.equalTo(segmentedControl.snp.bottom).offset(20)
            make.width.equalTo(safeAreaLayoutGuide)
            make.bottom.equalTo(addTaskButton.snp.top).offset(-20)
        }
        backgroundImage.snp.makeConstraints { make in
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
}
