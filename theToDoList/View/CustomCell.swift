//
//  CustomCell.swift
//  theToDoList
//
//  Created by Георгий Матченко on 05.08.2022.
//

import Foundation
import UIKit
import SnapKit

class CustomCell: UITableViewCell {
    private lazy var titleLable: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SystemFont-Regular", size: 13)
        return label
    }()
    
    private lazy var imageCell: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
        titleLableContraints()
        imageStatusConstraints()
        timeLableContraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setViews()
        titleLableContraints()
        imageStatusConstraints()
        timeLableContraints()
    }
    
    private func setViews() {
        self.contentView.addSubview(titleLable)
        self.contentView.addSubview(imageCell)
        self.contentView.addSubview(timeLabel)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    
    private func titleLableContraints() {
        titleLable.snp.makeConstraints { make in
            make.leading.equalTo(10)
            make.height.equalTo(self.contentView)
        }
    }
    
    private func timeLableContraints() {
        timeLabel.snp.makeConstraints { make in
            make.trailing.equalTo(-10)
            make.height.equalTo(self.contentView)
        }
    }

    private func imageStatusConstraints() {
        imageCell.snp.makeConstraints { make in
            make.trailing.equalTo(-10)
            make.height.equalTo(self.contentView)
        }
    }
    
    func changeImage(text: String) {
        imageCell.image = UIImage(named: "\(text)")
    }
    
    func changeTitle(text: String) {
        titleLable.text = text
    }
    
    func changeTime(time: String) {
        timeLabel.text = time
    }
    
    func hideTime() {
        timeLabel.isHidden = true
    }
    
    func showTime() {
        timeLabel.isHidden = false
    }
}
