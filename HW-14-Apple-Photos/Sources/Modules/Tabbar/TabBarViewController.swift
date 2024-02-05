//
//  TabBarViewController.swift
//  HW-14-Apple-Photos
//
//  Created by Arthur Sh on 04.02.2024.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        setupTabBarViewController()
        selectStartViewController()
    }
    
    // MARK: - Setup
    
    private func setupTabBar() {
        tabBar.backgroundColor = .darkOnDark
        tabBar.tintColor = .systemBlue
    }
    
    private func setupTabBarViewController() {
        let libraryViewController = FirstViewController()
        let firstItem = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.on.rectangle.fill"), tag: 1)
        libraryViewController.tabBarItem = firstItem
        
        let forYouViewController = SecondViewController()
        let secondItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square.fill"), tag: 2)
        forYouViewController.tabBarItem = secondItem
        
        let albumsViewController = MainViewController()
        let thirdItem = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), tag: 3)
        albumsViewController.tabBarItem = thirdItem
        let navigationAlbumsViewController = UINavigationController(rootViewController: albumsViewController)
        
        let searchViewController = ThirdViewController()
        let fourthItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        searchViewController.tabBarItem = fourthItem
        
        let allViewControllers = [libraryViewController, forYouViewController, navigationAlbumsViewController, searchViewController]

        self.setViewControllers(allViewControllers, animated: true)
    }
    
    private func selectStartViewController() {
        selectedIndex = 2
    }
}
