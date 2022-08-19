//
//  UIViewController+Extension.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/18.
//

import UIKit

extension UIViewController {
    
    func transitionViewController<T: UIViewController>(storyborad: String, viewController vc: T) {
        
        let sb = UIStoryboard(name: storyborad, bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: T.reuseIdentifier) as? T else { return }
        self.present(controller, animated: true)
        
    }
    
}
