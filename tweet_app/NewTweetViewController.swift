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
        setDoneButton()
    }
    
    //キーボード以外の箇所を押下でキーボードを閉じる処理
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
    
    //キーボードを閉じる処理
    @objc func tapDoneButton() {
        view.endEditing(true)
    }
    
    //ツールバーにキーボードを閉じる処理を追加
    func setDoneButton() {
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        toolBar.barStyle = UIBarStyle.black
        toolBar.sizeToFit()
        let commitButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(tapDoneButton))
        toolBar.items = [commitButton]
        userNameFiled.inputAccessoryView = toolBar
        tweetFiled.inputAccessoryView = toolBar
    }
}
