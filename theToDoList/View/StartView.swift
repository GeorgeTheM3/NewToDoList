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
        let img = UIImageView()
        img.image = UIImage(named: "fon-2")
        img.contentMode = .scaleAspectFill
        return img
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
    
    private(set) lazy var newAccountButton: UIButton = {
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
        setImageView()
        setNewAccountButton()
        setSignInButton()
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder: Decoder)
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
    
    private func setNewAccountButton(){
        newAccountButton.snp.makeConstraints { make in
            make.bottom.equalTo(signInButton.snp.top).offset(-20)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.width.equalTo(250)
            make.height.equalTo(42)
        }
    }
    
    private func setSignInButton(){
        signInButton.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(42)
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-40)
        }
    }
}
