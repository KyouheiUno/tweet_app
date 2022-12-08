//
//  Tweet.swift
//  tweet_app
//
//  Created by 宇野恭平 on R 4/12/09.
//

import Foundation
import UIKit

class Tweet: NSObject {
    
    var userName: String
    var content: String
    
    init(userName: String, content: String) {
        self.userName = userName
        self.content = content
    }
}
