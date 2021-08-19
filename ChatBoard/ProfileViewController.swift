//
//  ProfileViewController.swift
//  ProfileViewController
//
//  Created by 정민영 on 2021/08/16.
//

import UIKit

class ProfileViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupLayout() {
        super.setupLayout()
        setupNavigtaionBar()
    }
}

// MARK: - UINavigationItemFactoryDelegate Protocol
extension ProfileViewController: UINavigationItemFactoryDelegate {
    func SettingButtonAction(_ Sender: Any) {
        print("setting")
    }
    
    func EditButtonAction(_ Sender: Any) {
        print("edit")
    }
}

// MARK: - CustomableNaviBar Protocol
extension ProfileViewController: CustomableNaviBar {
    var naviItemFactory : UINavigationItemFactory {
        get {
            return UINavigationItemFactory(delegate: self)
        }
    }
    
    func MakeLeftNaviItems() -> [UIBarButtonItem]? {
        return [UIBarButtonItem(customView: naviItemFactory.MakeTitleLabel(text: "프로필"))]
    }
    
    func MakeRightNaviItems() -> [UIBarButtonItem]? {
        return [naviItemFactory.MakeSettingButton(),
                naviItemFactory.MakeEditButton()]
    }
    
    func MakeNaviTitleView() -> UIView? {
        return nil
    }
}
