//
//  BoardViewController.swift
//  BoardViewController
//
//  Created by 정민영 on 2021/08/16.
//

import UIKit

class BoardViewController: UIViewController, UINavigationItemFactoryDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        let naviItemFactory = UINavigationItemFactory()
        naviItemFactory.delegate = self
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: naviItemFactory.MakeTitleLabel(text: "게시판"))
        self.navigationItem.rightBarButtonItems = [naviItemFactory.MakeSettingButton(),
                                                   naviItemFactory.MakeSearchButton()]
    }
    
    func SettingButtonAction(_ Sender: Any) {
        print("setting")
    }
    
    func SearchButtonAction(_ Sender: Any) {
        print("search")
    }
}
