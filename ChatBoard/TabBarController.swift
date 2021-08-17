//
//  TabBarController.swift
//  TabBarController
//
//  Created by 정민영 on 2021/08/16.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let boardVC = UINavigationController(rootViewController: BoardViewController())
        let chatVC = UINavigationController(rootViewController: ChatViewController())
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        setViewControllers([boardVC, chatVC, profileVC], animated: false)
        boardVC.tabBarItem = UITabBarItem(title: "게시판", image: UIImage(systemName: "newspaper"), selectedImage: nil)
        chatVC.tabBarItem = UITabBarItem(title: "채팅", image: UIImage(systemName: "message"), selectedImage: nil)
        profileVC.tabBarItem = UITabBarItem(title: "프로필", image: UIImage(systemName: "person"), selectedImage: nil)
    }
}
