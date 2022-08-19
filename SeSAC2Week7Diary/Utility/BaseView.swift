//
//  BaseView.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/19.
//

import UIKit

class BaseView: UIView {
    
    // 코드 베이스일 때 호출
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        setConstraints()
    }
    
    //xib storyboard, protocol 기반이기 때문에 code 기반이여도 필수적으로 구현해주어야 함
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented") //런타임 오류 : 반환값 never
    }
    
    func configureUI() { }
    
    func setConstraints() { }
    
}

