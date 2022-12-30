//
//  HomeViewController.swift
//  tweet_app
//
//  Created by 宇野恭平 on R 4/12/09.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var addTweetButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        //xibファイルを登録する
        tableView.register(UINib(nibName: "TweetViewCell", bundle: nil), forCellReuseIdentifier: "customTweetCell")
        configureTableView()
        addConfigureTweetButton() //新規ツイートボタンの
    }
    
    //新規ツイート画面への遷移ボタンの構成
    func addConfigureTweetButton() {
        addTweetButton.layer.cornerRadius = addTweetButton.bounds.width * 0.1
    }
    
    //セルの高さを調整
    func configureTableView() {
        tableView.rowHeight = 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTweetCell", for: indexPath) as! TweetViewCell
        cell.userIcon.image = UIImage(systemName: "swift")
        cell.tweetText.text = "これはサンプルのテキストです。これはサンプルのテキストです。これはサンプルのテキストです。これはサンプルのテキストです。これはサンプルのテキストです。"
        cell.userName.text = "サンプルユーザー名"
        return cell
    }
}
