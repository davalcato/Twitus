//
//  Cell.swift
//  Twitus
//
//  Created by Daval Cato on 4/12/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import LBTAComponents

let twitusBlue = UIColor(r: 61, g: 167, b: 244)

class UserFooter: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = twitusBlue
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor
            , topConstant: 0
            , leftConstant: 12
            , bottomConstant: 0
            , rightConstant: 0
            , widthConstant: 0
            , heightConstant: 0)
       
    }
}

class UserHeader: DatasourceCell {
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor
            , topConstant: 0
            , leftConstant: 12
            , bottomConstant: 0
            , rightConstant: 0
            , widthConstant: 0
            , heightConstant: 0)
        
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            print(datasourceItem as Any)
            
        }
        
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named:"profile_image.jpg")
        
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Joie Chavez"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@shai.com"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(r: 130, g: 130, b: 130)
        return label
    }()
    
    let bioTextView:  UITextView = {
        let textView = UITextView()
        textView.text = "For many of us, the vernal shift also brings an “aha” moment in front of the mirror, when the requisite sweaters and boots of recent months suddenly feel like remnants from another era."
        textView.font = UIFont.systemFont(ofSize: 12)
        textView.backgroundColor = .clear
        
        return textView
        
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitusBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(twitusBlue, for: .normal)
        button.setImage(UIImage(named: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        
        
        return button
        
    }()
    
    override func setupViews() {
        super.setupViews()
        
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12
            , leftConstant: 12
            , bottomConstant: 0
            , rightConstant: 0
            , widthConstant: 50
            , heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0
            , leftConstant: 8
            , bottomConstant: 0
            , rightConstant: 12
            , widthConstant: 0
            , heightConstant: 20)
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0
            , leftConstant: 0
            , bottomConstant: 0
            , rightConstant: 0
            , widthConstant: 0
            , heightConstant: 20)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4
            , leftConstant: -4
            , bottomConstant: 0
            , rightConstant: 0
            , widthConstant: 0
            , heightConstant: 0)
        
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12
            , leftConstant: 0
            , bottomConstant: 0
            , rightConstant: 12
            , widthConstant: 120
            , heightConstant: 34)
        
        
    }
}
















