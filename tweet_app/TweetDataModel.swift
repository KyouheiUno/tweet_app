//
//  TweetDataModel.swift
//  tweet_app
//
//  Created by 宇野恭平 on R 4/12/31.
//

import Foundation
import RealmSwift

class TweetDataModel: Object {
    @objc dynamic var id: String = UUID().uuidString // データを一意に識別するための識別子
    @objc dynamic var userName: String = ""
    @objc dynamic var tweetText: String = ""
    @objc dynamic var recordDate: Date = Date()
}
