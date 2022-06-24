//
//  MainTabBarViewController.swift
//  Polydev
//
//  Created by Jafar on 23.06.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")

        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        
        
        tabBar.tintColor = .label
        
        
        setViewControllers([vc1, vc2, vc3], animated: true)
        
    }


}

