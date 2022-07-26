//
//  InfoTaskVC.swift
//  theToDoList
//
//  Created by Георгий Матченко on 26.07.2022.
//

import Foundation
import UIKit

class InfoTaskVC: UIViewController {
    
    private var infoTaskView: InfoTaskView {
        return self.view as! InfoTaskView
    }
    
    override func loadView() {
        super.loadView()
        self.view = InfoTaskView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTaskView.backButton(self, action: #selector(toTasksView))
        infoTaskView.deleteButton(self, action: #selector(deleteToTasksView))
    }
    
    @objc private func toTasksView() {
        dismiss(animated: true)
    }
    
    @objc private func deleteToTasksView() {
        dismiss(animated: true)
    }
}
