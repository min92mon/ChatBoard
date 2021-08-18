//
//  ChatViewController.swift
//  ChatViewController
//
//  Created by 정민영 on 2021/08/16.
//

import UIKit

class ChatViewController: BaseViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupLayout() {
        super.setupLayout()
        setupNavigtaionBar()
    }
}

// MARK: - UINavigationItemFactoryDelegate Protocol
extension ChatViewController: UINavigationItemFactoryDelegate {
      func SettingButtonAction(_ Sender: Any) {
        print("setting")
    }
    
    func NewChatButtonAction(_ Sender: Any) {
        print("newChat")
    }
    
    func SearchButtonAction(_ Sender: Any) {
        print("search")
    }
}

// MARK: - CustomableNaviBar Protocol
extension ChatViewController: CustomableNaviBar {
    var naviItemFactory : UINavigationItemFactory {
        get {
            return UINavigationItemFactory(delegate: self)
        }
    }
    
    func MakeLeftNaviItems() -> [UIBarButtonItem]? {
        return [UIBarButtonItem(customView: naviItemFactory.MakeTitleLabel(text: "채팅"))]
    }
    
    func MakeRightNaviItems() -> [UIBarButtonItem]? {
        return [naviItemFactory.MakeSettingButton(),
                naviItemFactory.MakeNewChatButton(),
                naviItemFactory.MakeSearchButton()]
    }
    
    func MakeNaviTitleView() -> UIView? {
        return nil
    }
}
