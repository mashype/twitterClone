//
//  HomeDatasourceController+navbar.swift
//  
//
//  Created by Seth Merritt on 1/26/18.
//

import UIKit

extension HomeDatasourceController {
	
	func setupNavigationBarItems() {
		setupLeftNavItem()
		setupRightNavItems()
		setupRemainingNavItems()
	}
	
	private func setupLeftNavItem() {
		let followButton = UIButton(type: .system)
		followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
		followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
		navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
	}
	
	private func setupRightNavItems() {
		let searchButton = UIButton(type: .system)
		searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
		searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
		navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchButton)
		
		let composeButton = UIButton(type: .system)
		composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
		composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
		navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchButton)
		
		navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
	}
	
	private func setupRemainingNavItems() {
		let titleImageView = UIImageView(image: #imageLiteral(resourceName: "title_icon"))
		titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
		titleImageView.contentMode = .scaleAspectFit
		navigationItem.titleView = titleImageView
		navigationController?.navigationBar.backgroundColor = .white
		navigationController?.navigationBar.isTranslucent = false
	}

}
