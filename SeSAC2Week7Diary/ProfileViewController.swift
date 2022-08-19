//
//  ProfileViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/18.
//

import UIKit
import SnapKit
extension NSNotification.Name {
    static let saveButton = NSNotification.Name("saveButtonNotification")
}

class ProfileViewController: UIViewController {

    let saveButton: UIButton = {
        let view = UIButton()
        view.setTitle("저장", for: .normal)
        view.backgroundColor = .black
        return view
    }()
    
    let nameTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "이름을 입력하세요"
        view.backgroundColor = .brown
        view.textColor = .white
        return view
    }()
    
    var saveButtonActionHandler: ((String) -> ())? //함수 자체
    
    func configure() {
        [saveButton, nameTextField].forEach { view.addSubview($0) }
        
        nameTextField.snp.makeConstraints {
            $0.leading.trailing.equalTo(view).inset(50)
            $0.top.equalTo(50)
            $0.height.equalTo(50)
        }
        
        saveButton.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.center.equalTo(view)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        view.backgroundColor = .white
        
        saveButton.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationObserver(notificaition:)), name: NSNotification.Name("TEST"), object: nil)
        
//        deinit {
//            NotificationCenter.default.removeObserver(self, name: NSNotification.Name("TEST"), object: nil)
//        }
    }
    
    @objc func saveButtonNotificationObserver(notificaition: NSNotification) {
        if let name = notificaition.userInfo?["name"] as? String {
            print(name)
            self.nameTextField.text = name
        }
    }
    
    @objc func saveButtonClicked() {
        //값 전달 기능 실행 => 클로저 구문 활용
        //1. 클로저
        //saveButtonActionHandler?(nameTextField.text!)
        //2. Notification
        NotificationCenter.default.post(name: NSNotification.Name("saveButtonNotification"), object: nil, userInfo: ["name":nameTextField.text!, "value": 123456])
        
        
        //화면 Dismiss
        dismiss(animated: true)
    }



}
