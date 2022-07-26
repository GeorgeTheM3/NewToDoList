//
//  AddTaskVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class AddTaskVC: UIViewController {
    
    private var addTaskView: AddTaskView {
        return self.view as! AddTaskView
    }
    
    override func loadView() {
        super.loadView()
        self.view = AddTaskView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTaskView.backButton(self, action: #selector(toTaskView))
    }
    
    @objc private func toTaskView() {
        dismiss(animated: true)
    }
    
}

