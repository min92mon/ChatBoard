//
//  NavigationBarItemFactory.swift
//  NavigationBarItemFactory
//
//  Created by 정민영 on 2021/08/17.
//

import UIKit

@objc protocol UINavigationItemFactoryDelegate {
    @objc optional func SettingButtonAction(_ Sender: Any)
    @objc optional func SearchButtonAction(_ Sender: Any)
    @objc optional func NewChatButtonAction(_ Sender: Any)
}

// MARK: - Implement Common Action in NavigationItem
extension UINavigationItemFactoryDelegate {
    
}

class UINavigationItemFactory {
    var delegate : UINavigationItemFactoryDelegate?
    
    init(delegate : UINavigationItemFactoryDelegate?) {
        self.delegate = delegate
    }
    
    func MakeSettingButton() -> UIBarButtonItem {
        let settingBtn = UIBarButtonItem(image: UIImage(systemName: "gearshape"),
                                         style: .plain,
                                         target: delegate,
                                         action: #selector(delegate?.SettingButtonAction(_:)))
        return settingBtn
    }
    
    func MakeSearchButton() -> UIBarButtonItem {
        let searchBtn = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"),
                                        style: .plain,
                                        target: delegate,
                                        action: #selector(delegate?.SearchButtonAction(_:)))
        return searchBtn
    }
    
    func MakeNewChatButton() -> UIBarButtonItem {
        let newChatBtn = UIBarButtonItem(image: UIImage(systemName: "plus.message"),
                                        style: .plain,
                                        target: delegate,
                                        action: #selector(delegate?.NewChatButtonAction(_:)))
        return newChatBtn
    }
    
    func MakeTitleLabel(text: String) -> UILabel {
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        title.textAlignment = .left
        title.font = UIFont.boldSystemFont(ofSize: 30)
        title.text = text
        return title
    }
}
