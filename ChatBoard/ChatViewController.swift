//
//  ChatViewController.swift
//  ChatViewController
//
//  Created by 정민영 on 2021/08/16.
//

import UIKit

class ChatViewController: UIViewController, UINavigationItemFactoryDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let naviItemFactory = UINavigationItemFactory()
        naviItemFactory.delegate = self
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: naviItemFactory.MakeTitleLabel(text: "채팅"))
        self.navigationItem.rightBarButtonItems = [naviItemFactory.MakeSettingButton(),
                                                   naviItemFactory.MakeNewChatButton(),
                                                   naviItemFactory.MakeSearchButton()]
    }
    
    func SettingButtonAction(_ Sender: Any) {
    }
    
    func NewChatButtonAction(_ Sender: Any) {
    }
    
    func SearchButtonAction(_ Sender: Any) {
    }
}
