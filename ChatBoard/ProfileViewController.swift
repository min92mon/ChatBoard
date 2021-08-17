//
//  ProfileViewController.swift
//  ProfileViewController
//
//  Created by 정민영 on 2021/08/16.
//

import UIKit

class ProfileViewController: UIViewController, UINavigationItemFactoryDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let naviItemFactory = UINavigationItemFactory()
        naviItemFactory.delegate = self
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: naviItemFactory.MakeTitleLabel(text: "프로필"))
        self.navigationItem.rightBarButtonItems = [naviItemFactory.MakeSettingButton()]
    }
    
    func SettingButtonAction(_ Sender: Any) {
    }
}
