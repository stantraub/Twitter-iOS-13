//
//  Notication.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 8/1/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import Foundation

enum NotificationType: Int {
    case follow
    case like
    case reply
    case retweet
    case mentions
}

struct Notfication {
    let tweetID: String?
    var timestamp: Date!
    let user: User
    var tweet: Tweet?
    var type: NotificationType!
    
    init(user: User, tweet: Tweet?, dictionary: [String: AnyObject]) {
        self.user = user
        self.tweet = tweet
        
        self.tweetID = dictionary["tweetID"] as? String ?? ""
        
        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
        
        if let type = dictionary["type"] as? Int {
            self.type = NotificationType(rawValue: type)
        }
    }
}
