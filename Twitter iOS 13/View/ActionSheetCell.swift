//
//  ActionSheetCell.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 7/30/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import UIKit

class ActionSheetCell: UITableViewCell {
    
    //MARK: - Properties
    
    var option: ActionSheetOptions? {
        didSet { configure() }
    }
    
    private let optionImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.setDimensions(width: 36, height: 36)
        iv.image = #imageLiteral(resourceName: "twitter_logo_blue")
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Test Option"
        return label
    }()
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let actionStack = UIStackView(arrangedSubviews: [optionImageView, titleLabel])
        actionStack.spacing = 12
        addSubview(actionStack)
        actionStack.anchor(left: leftAnchor, paddingLeft: 8)
        actionStack.centerY(inView: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func configure() {
        titleLabel.text = option?.description
    }
}
