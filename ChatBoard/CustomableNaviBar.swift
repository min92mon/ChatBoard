//
//  NavigationItemFactoryMethod.swift
//  NavigationItemFactoryMethod
//
//  Created by 정민영 on 2021/08/18.
//

import UIKit

protocol CustomableNaviBar {
    func MakeLeftNaviItems() -> [UIBarButtonItem]?
    func MakeRightNaviItems() -> [UIBarButtonItem]?
    func MakeNaviTitleView() -> UIView?
    
    // Optional
    func setupExtraNaviItems() -> Void
}

extension CustomableNaviBar where Self : BaseViewController {
    func setupNavigtaionBar() {
        self.navigationItem.leftBarButtonItems = MakeLeftNaviItems()
        self.navigationItem.rightBarButtonItems = MakeRightNaviItems()
        self.navigationItem.titleView = MakeNaviTitleView()
        setupExtraNaviItems()
    }
    
    func setupExtraNaviItems() -> Void {
    }
}
