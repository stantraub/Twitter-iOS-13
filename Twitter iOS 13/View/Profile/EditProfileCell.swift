//
//  EditProfileCell.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 8/7/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import UIKit

class EditProfileCell: UITableViewCell {
    
    //MARK: - Properties
    
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
}
