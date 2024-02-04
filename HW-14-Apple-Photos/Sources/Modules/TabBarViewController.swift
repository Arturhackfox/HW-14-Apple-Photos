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
    }
    
    // MARK: - Setup
    
    private func setupTabBar() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .systemBlue
    }
    
    private func setupTabBarViewController() {
        let firstViewController = FirstViewController()
        let firstItem = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.on.rectangle.fill"), tag: 1)
        firstViewController.tabBarItem = firstItem
        
        let secondViewController = SecondViewController()
        let secondItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square.fill"), tag: 2)
        secondViewController.tabBarItem = secondItem
        
        let thirdViewController = MainViewController()
        let thirdItem = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), tag: 3)
        thirdViewController.tabBarItem = thirdItem
        let navigationThirdViewController = UINavigationController(rootViewController: thirdViewController)
        
        let fourthViewController = ThirdViewController()
        let fourthItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        fourthViewController.tabBarItem = fourthItem
        
        let allViewControllers = [firstViewController, secondViewController, navigationThirdViewController, fourthViewController]
        self.setViewControllers(allViewControllers, animated: true)
    }
    
    
}
