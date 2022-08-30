//
//  StartView.swift
//  theToDoList
//
//  Created by Георгий Матченко on 16.08.2022.
//

import Foundation
import UIKit
import SnapKit

class StartView: UIView {
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "fon-2")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private(set) lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        return button
    }()

    private(set) lazy var createNewAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create an Account", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        return button
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
        addSubview(backgroundImageView)
        addSubview(createNewAccountButton)
        addSubview(signInButton)
    }

    private func setConstraintsViews() {
        backgroundImageView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
        createNewAccountButton.snp.makeConstraints { make in
            make.bottom.equalTo(signInButton.snp.top).offset(-20)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(250)
            make.height.equalTo(42)
        }
        signInButton.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(42)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-40)
        }
    }
}
