//
//  BaseViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/19.
//

import UIKit



class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        setConstraints()
    }
    
    func configure() { }
    
    func setConstraints() { }
    
    func showAlertMessage(title: String, button: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: button, style: .cancel)
        alert.addAction(ok)
        self.present(alert, animated: true)
    }
}
