//
//  BaseViewController.swift
//  BaseViewController
//
//  Created by 정민영 on 2021/08/18.
//

import UIKit

class BaseViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout() {
    }
}

// MARK: - Setup Simple Alert
extension BaseViewController {
    func alert(_ message: String, completion: (()->Void)? = nil) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "확인", style: .cancel) { (_) in
                completion?()
            }
            alert.addAction(okAction)
            self.present(alert, animated: false)
        }
    }
}
