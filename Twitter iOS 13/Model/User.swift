//
//  User.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 7/25/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import Foundation
import Firebase

struct User {
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: URL?
    var bio: String?
    let uid: String
    var isFollowed = false
    var stats: UserRelationStats?
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == uid }
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
            
        if let bio = dictionary["bio"] as? String {
            self.bio = bio
        }
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else { return }
            self.profileImageUrl = url
        }
        

    }
}

struct UserRelationStats {
    var followers: Int
    var following: Int
}
