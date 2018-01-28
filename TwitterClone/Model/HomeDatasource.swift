//
//  HomeDatasource.swift
//  TwitterClone
//
//  Created by Seth Merritt on 1/26/18.
//  Copyright © 2018 leftyseth. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
		
		let sethUser = User(name: "Seth", username: "@mashype", bioText: "Seth is super studly and an awesome all around dude that you know you can trust simply because he's so damn compelling and a dynamic speaker", profileImage: #imageLiteral(resourceName: "profile_image"))
		
        let brianUser = User(name: "Brian Voong", username: "@letsbuildthatapp", bioText: "iPhone, iPand, iOS programming Community. Join us to learn Swift, Objective C an build iOS apps!", profileImage: #imageLiteral(resourceName: "brian_profile_image"))
        
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is an iphone developer and tweets on iOS related develoments", profileImage: #imageLiteral(resourceName: "brian_profile_image"))
        
        return[sethUser, brianUser, rayUser]
    }()
	
	let tweets = ["poop", "caca", "cheese"]

    
    //number of items is an LBTA function that is the items in the body of the collection view
    override func numberOfItems(_ section: Int) -> Int {
		if section == 1 {
			return tweets.count
		} else {
			return users.count
		}
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
	
	//this returns an array of cell types in the sections. Tweets will now be in the second section.
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.row]
    }
	
	override func numberOfSections() -> Int {
		return 2
	}
}
