//
//  BoardViewController.swift
//  BoardViewController
//
//  Created by 정민영 on 2021/08/16.
//

import UIKit

class BoardViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupLayout() {
        super.setupLayout()
        setupNavigtaionBar()
    }
}

// MARK: - UINavigationItemFactoryDelegate Protocol
extension BoardViewController: UINavigationItemFactoryDelegate {
      func SettingButtonAction(_ Sender: Any) {
        print("setting")
    }
    
    func SearchButtonAction(_ Sender: Any) {
        print("search")
    }
}

// MARK: - CustomableNaviBar Protocol
extension BoardViewController: CustomableNaviBar {
    var naviItemFactory : UINavigationItemFactory {
        get {
            return UINavigationItemFactory(delegate: self)
        }
    }
    
    func MakeLeftNaviItems() -> [UIBarButtonItem]? {
        return [UIBarButtonItem(customView: naviItemFactory.MakeTitleLabel(text: "게시판"))]
    }
    
    func MakeRightNaviItems() -> [UIBarButtonItem]? {
        return [naviItemFactory.MakeSettingButton(),
                naviItemFactory.MakeSearchButton()]
    }
    
    func MakeNaviTitleView() -> UIView? {
        return nil
    }
}
