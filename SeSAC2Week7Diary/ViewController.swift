//
//  ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/16.
//

import UIKit
import SeSAC2UIFramework

class ViewController: UIViewController {
    
    var name = "고래밥"
    
    private var age = 22

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        testOpen()
        
        showSesacAlert(title: "테스트 얼럿", message: "테스트 메세지", buttonTitle: "변경") { _ in
            self.view.backgroundColor = .lightGray
        }
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.com"
//        let text = "WWDC What's New!!!"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
        
        OpenWebView.presentWebViewController(self, url: "https://www.naver.com", transitionStyle: .present)
        
    }

}

