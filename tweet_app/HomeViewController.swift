//
//  HomeViewController.swift
//  tweet_app
//
//  Created by 宇野恭平 on R 4/12/09.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    //ダミーデータを定義
    
    let fakeData = ["ダミーデータその１","ダミーデータその2","ダミーデータその3","ダミーデータその4","ダミーデータその5ダミーデータその5ダミーデータその5",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

////tableViewの拡張
extension HomeViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fakeData.count //この箇所に全てのツイート数を変数にして返す・現時点ではダミーデータの個数を返す
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = fakeData[indexPath.row]
        cell.textLabel!.numberOfLines = 0 //0に設定
        return cell
    }
}
