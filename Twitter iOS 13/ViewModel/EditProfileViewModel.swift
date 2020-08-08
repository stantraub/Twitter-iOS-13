//
//  EditProfileViewModel.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 8/7/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import Foundation

enum EditProfileOptions: Int, CaseIterable {
    case fullname
    case username
    case bio
    
    var description: String {
        switch self {
        case .username: return "Username"
        case .fullname: return "Name"
        case .bio: return "Bio"
        }
    }
}
