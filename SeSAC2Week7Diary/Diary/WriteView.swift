//
//  WriteView.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/19.
//

import UIKit

class WriteView: BaseView {
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .lightGray
        return view
    }()
    
    let titleTextField: BlackRadiusTextField = {
        let view = BlackRadiusTextField()
        view.placeholder = "제목을 입력해주세요"
        return view
    }()
    
    let dateTextField: BlackRadiusTextField = {
        let view = BlackRadiusTextField()
        view.placeholder = "날짜를 입력해주세요"
        return view
    }()
    let contentTextView: UITextView = {
        let view = UITextView()
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    
    // 코드 베이스일 때 호출
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    //xib storyboard, protocol 기반이기 때문에 code 기반이여도 필수적으로 구현해주어야 함
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented") //런타임 오류 : 반환값 never
    }
    
    override func configureUI() {
        [photoImageView, titleTextField, dateTextField, contentTextView].forEach {
            self.addSubview($0)
        }
        
        
        func setConstraints() {
            photoImageView.snp.makeConstraints { make in
                make.top.equalTo(self.safeAreaLayoutGuide)
                make.leadingMargin.equalTo(20)
                make.trailingMargin.equalTo(-20)
                make.height.equalTo(self).multipliedBy(0.3)
            }
            
            self.titleTextField.snp.makeConstraints { make in
                make.top.equalTo(photoImageView.snp.bottom).offset(20)
                make.leadingMargin.equalTo(20)
                make.trailingMargin.equalTo(-20)
                make.height.equalTo(50)
            }
            
            self.dateTextField.snp.makeConstraints { make in
                make.top.equalTo(titleTextField.snp.bottom).offset(20)
                make.leadingMargin.equalTo(20)
                make.trailingMargin.equalTo(-20)
                make.height.equalTo(50)
            }
            
            self.contentTextView.snp.makeConstraints { make in
                make.top.equalTo(dateTextField.snp.bottom).offset(20)
                make.leadingMargin.equalTo(20)
                make.trailingMargin.equalTo(-20)
                make.bottom.equalTo(self.safeAreaLayoutGuide)
            }
        }
    }
}

