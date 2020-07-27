//
//  UserService.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 7/25/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser(uid: String, completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
            print("DEBUG: Dictionary is \(dictionary)")
                        
            let user = User(uid: uid, dictionary: dictionary)
            completion(user)
        }
    }
}
