//
//  FirstViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var animationImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationImageView.image = UIImage(systemName: "star.fill")
        animationImageView.tintColor = .yellow
        
        tutorialLabel.numberOfLines = 0
        tutorialLabel.alpha = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.text = """
        일기 씁시다!
        잘 써봅시다!
        """
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
        } completion: { _ in
            self.animateBlackView()
            self.animateImageView()
        }

    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 2) {
            self.blackView.transform = CGAffineTransform(scaleX: 3, y: 1)
            self.blackView.alpha = 1
            self.blackView.layoutIfNeeded()
        } completion: { _ in
        }

    }
    
    func animateImageView() {
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.animationImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }

    }

}
