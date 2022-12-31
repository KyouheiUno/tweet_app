//
//  HomeViewController.swift
//  tweet_app
//
//  Created by 宇野恭平 on R 4/12/09.
//

import UIKit
import RealmSwift

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func addTweetButton(_ sender: UIButton) {
        moveToNewTweetView()
    }
    @IBOutlet weak var addTweetButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var tweetDataList: [TweetDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        //xibファイルを登録する
        tableView.register(UINib(nibName: "TweetViewCell", bundle: nil), forCellReuseIdentifier: "customTweetCell")
        configureTableView()
        setTweetData()
        addConfigureTweetButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setTweetData()
        tableView.reloadData()
    }
    
    //キーボード以外の箇所を押下でキーボードを閉じる処理
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //ツイートモデルのデータの表示
    func setTweetData() {
        let realm = try! Realm()
        let tweetData = realm.objects(TweetDataModel.self).sorted(byKeyPath: "recordDate", ascending: false)
        tweetDataList = Array(tweetData)
    }
    
    //新規ツイート画面への遷移ボタンの構成
    func addConfigureTweetButton() {
        addTweetButton.layer.cornerRadius = addTweetButton.bounds.width * 0.1
    }
    
    //新規ツイート画面への遷移
    func moveToNewTweetView() {
        let storybord = UIStoryboard(name: "NewTweetViewController", bundle: nil )
        guard let newTweetViewController = storybord.instantiateInitialViewController() as? NewTweetViewController else { return }
        present(newTweetViewController, animated: true)
    }
    
    //セルの高さを調整
    func configureTableView() {
        tableView.rowHeight = 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweetDataList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTweetCell", for: indexPath) as! TweetViewCell
        cell.userIcon.image = UIImage(systemName: "swift")
        let tweetDataModel: TweetDataModel = tweetDataList[indexPath.row]
        cell.userName.text = tweetDataModel.userName
        cell.tweetText.text = tweetDataModel.tweetText
        return cell
    }
}
