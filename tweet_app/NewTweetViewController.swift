//
//  NewTweetViewController.swift
//  tweet_app
//
//  Created by 宇野恭平 on R 4/12/31.
//

import UIKit

class NewTweetViewController: UIViewController {
    
    @IBOutlet weak var userNameFiled: UITextField!
    @IBOutlet weak var tweetFiled: UITextView!
    @IBOutlet weak var createTweetButton: UIButton!
    @IBOutlet weak var backHomeButton: UIButton!
    
    @IBAction func createTweetButton(_ sender: UIButton) {
        //ツイートボタン押下時の処理のメソッドの記入をする
    }
    @IBAction func backHomeButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addConfigureButton()
        addConfigureTextFiled()
    }
    
    //各種テキストフィールドの構成
    func addConfigureTextFiled() {
        createTweetButton.layer.cornerRadius = createTweetButton.bounds.width * 0.1
        tweetFiled.layer.cornerRadius = tweetFiled.bounds.width * 0.05
    }
    
    //各種ボタンの構成
    func addConfigureButton() {
        userNameFiled.layer.cornerRadius = userNameFiled.bounds.width * 0.1
        backHomeButton.layer.cornerRadius = backHomeButton.bounds.width * 0.1
    }
}
