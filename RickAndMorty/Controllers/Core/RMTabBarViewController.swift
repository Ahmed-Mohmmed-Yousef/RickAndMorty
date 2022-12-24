//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Ahmed Mohamed Yousef on 24/12/2022.
//

import UIKit

class RMTabBarViewController: UITabBarController {
    
    private var tabs: [UINavigationController] = {
        let charcterVC = RMCharcterVC()
        charcterVC.title = "Charcters"
        charcterVC.tabBarItem = UITabBarItem(title: "Charcters",
                                             image: UIImage(systemName: "person"),
                                             tag: 1)
        let locationVC = RMLocationVC()
        locationVC.title = "Locations"
        locationVC.tabBarItem = UITabBarItem(title: "Locations",
                                             image: UIImage(systemName: "globe"),
                                             tag: 2)
        let episodeVC = RMEpisodeVC()
        episodeVC.title = "Episodes"
        episodeVC.tabBarItem = UITabBarItem(title: "Episodes",
                                            image: UIImage(systemName: "tv"),
                                            tag: 3)
        let settingVC = RMSettingsVC()
        settingVC.title = "Settings"
        settingVC.tabBarItem = UITabBarItem(title: "Settings",
                                            image: UIImage(systemName: "gear"),
                                            tag: 4)
        let navs = [charcterVC, locationVC, episodeVC, settingVC].map {
            let nav = UINavigationController(rootViewController: $0)
            nav.view.backgroundColor = .systemBackground
            nav.navigationItem.largeTitleDisplayMode = .automatic
            nav.navigationBar.prefersLargeTitles = true
            return nav
        }
        return navs
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabs()
    }
    
    private func setupTabs() {
        setViewControllers(self.tabs, animated: true)
    }


}

