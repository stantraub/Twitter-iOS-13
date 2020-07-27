//
//  Constants.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 7/24/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import Firebase

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")
let REF_TWEETS = DB_REF.child("tweets")
