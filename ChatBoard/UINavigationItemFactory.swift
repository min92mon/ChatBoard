//
//  NavigationBarItemFactory.swift
//  NavigationBarItemFactory
//
//  Created by 정민영 on 2021/08/17.
//

import UIKit

struct NaviItemImgName {
    static let SETTING = "gearshape"
    static let SEARCH = "magnifyingglass"
    static let NEWCHAT = "plus.message"
    static let EDIT = "square.and.pencil"
}

@objc protocol UINavigationItemFactoryDelegate {
    @objc optional func SettingButtonAction(_ Sender: Any)
    @objc optional func SearchButtonAction(_ Sender: Any)
    @objc optional func NewChatButtonAction(_ Sender: Any)
    @objc optional func EditButtonAction(_ Sender: Any)
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
        let settingBtn = UIBarButtonItem(image: UIImage(systemName: NaviItemImgName.SETTING),
                                         style: .plain,
                                         target: delegate,
                                         action: #selector(delegate?.SettingButtonAction(_:)))
        return settingBtn
    }
    
    func MakeSearchButton() -> UIBarButtonItem {
        let searchBtn = UIBarButtonItem(image: UIImage(systemName: NaviItemImgName.SEARCH),
                                        style: .plain,
                                        target: delegate,
                                        action: #selector(delegate?.SearchButtonAction(_:)))
        return searchBtn
    }
    
    func MakeNewChatButton() -> UIBarButtonItem {
        let newChatBtn = UIBarButtonItem(image: UIImage(systemName: NaviItemImgName.NEWCHAT),
                                         style: .plain,
                                         target: delegate,
                                         action: #selector(delegate?.NewChatButtonAction(_:)))
        return newChatBtn
    }
    
    func MakeEditButton() -> UIBarButtonItem {
        let editButton = UIBarButtonItem(image: UIImage(systemName: NaviItemImgName.EDIT),
                                         style: .plain,
                                         target: delegate,
                                         action: #selector(delegate?.EditButtonAction(_:)))
        return editButton
    }
    
    func MakeTitleLabel(text: String) -> UILabel {
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        title.textAlignment = .left
        title.font = UIFont.boldSystemFont(ofSize: 30)
        title.text = text
        return title
    }
}
