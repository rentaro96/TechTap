//
//  ViewController.swift
//  TechTap
//
//  Created by 鈴木廉太郎 on 2024/11/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< 100 {
            let button = addButton(on: view)
            button.titleLabel?.font = UIFont.systemFont(ofSize:32)
            button.setTitle("🥺", for: .normal)
            button.tag = i
            button.addAction(
                .init(handler: {action in
                    let sender = action.sender as! UIButton
                    self.buttonTapped(sender)
                }), for: .touchUpInside
            )
        }
        
        }
        // Do any additional setup after loading the view.
    func buttonTapped(_ sender: UIButton) {
        print("\(sender.tag)の絵文字が押されたよ！")
        
        sender.removeFromSuperview()
    }
    }




