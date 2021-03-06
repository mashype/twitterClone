//
//  TweetCell.swift
//  TwitterClone
//
//  Created by Seth Merritt on 1/27/18.
//  Copyright © 2018 leftyseth. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
	
	let profileImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.image = #imageLiteral(resourceName: "profile_image")
		imageView.layer.cornerRadius = 5
		imageView.layer.masksToBounds = true
		return imageView
	}()
	
	override func setupViews() {
		super.setupViews()
		
		separatorLineView.isHidden = false
		separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
		
		backgroundColor = .white
		addSubview(profileImageView)
		
		profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
	}
}

