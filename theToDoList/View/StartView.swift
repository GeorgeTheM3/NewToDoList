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
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "fon-2")
        view.contentMode = .scaleAspectFill
        return view
    }()
    private(set) lazy var signInButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 20
        view.backgroundColor = .black
        view.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()

    private(set) lazy var newAccountButton: UIButton = {
        let view = UIButton()
        view.setTitle("Create an Account", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = 20
        view.backgroundColor = .white
        view.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 20)
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setImageView()
        setNewAccountButton()
        setSignInButton()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addViews()
        setImageView()
        setNewAccountButton()
        setSignInButton()
    }
    private func addViews() {
        addSubview(imageView)
        addSubview(newAccountButton)
        addSubview(signInButton)
    }
    private func setImageView() {
        imageView.snp.makeConstraints { make in
            make.width.equalTo(safeAreaLayoutGuide)
            make.top.equalTo(0)
            make.bottom.equalTo(0)

        }
    }
    private func setNewAccountButton() {
        newAccountButton.snp.makeConstraints { make in
            make.bottom.equalTo(signInButton.snp.top).offset(-20)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(250)
            make.height.equalTo(42)
        }
    }
    private func setSignInButton() {
        signInButton.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(42)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-40)
        }
    }
}
