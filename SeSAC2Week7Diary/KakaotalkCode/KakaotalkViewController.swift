//
//  KakaotalkViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 이병현 on 2022/08/17.
//

import UIKit
import SnapKit

class KakaotalkViewController: UIViewController {
    
    let profileView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .cyan
        
        return view
    }()
    
    let backgroundView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .magenta
        
        return view
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        return view
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        return button
    }()
    
    let settingButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        return button
    }()
    
    let menuButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        return button
    }()
    
    let giftButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        return button
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .white
        label.text = "Cody"
        label.textAlignment = .center
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.text = "Sin prosa, Sin pausa"
        label.textAlignment = .center
        return label
    }()
    
    let selftalkButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        return button
    }()
    
    let profileSettingButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        return button
    }()
    
    let kakaoStoryButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(systemName: "star.fill"), for: .normal)
        return button
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 8
        
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [backgroundView, cancelButton, giftButton, menuButton, settingButton, profileView, nameLabel, subtitleLabel, lineView, stackView ].forEach {
            view.addSubview($0)
        }
        
        stackView.addArrangedSubview(selftalkButton)
        stackView.addArrangedSubview(profileSettingButton)
        stackView.addArrangedSubview(kakaoStoryButton)

        
        backgroundView.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.trailing.equalTo(view)
            make.leading.equalTo(view)
            make.bottom.equalTo(view)
        }
        
        cancelButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
        
        menuButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(settingButton).offset(-40)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
        
        giftButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(menuButton).offset(-40)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
        
        profileView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(150)
            make.width.equalTo(backgroundView.snp.width).multipliedBy(0.3)
            make.height.equalTo(backgroundView.snp.width).multipliedBy(0.3)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileView).offset(170)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(32)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel).offset(36)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(24)
        }
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel).offset(32)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.height.equalTo(3)
        }
        
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(60)
            make.trailing.equalTo(-60)
            make.top.equalTo(lineView).offset(8)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }

    }
    



}
