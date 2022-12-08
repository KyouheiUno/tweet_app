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
    
    //配列でダミーデータを設定する
    let fakeDate = ["ダミーデータその1", "ダミーデータその2", "ダミーデータその3", "ダミーデータその4", "ダミーデータその5", "ダミーデータその6", "ダミーデータその7"]
    
    override func viewDidLoad() {
        tableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fakeDate.count //この箇所に全てのツイート数を変数にして返す・現時点ではダミーデータの個数を返す
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
