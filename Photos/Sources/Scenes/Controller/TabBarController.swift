//
//  TabBarController.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBarController()
        setupTabBarViewControllers()
    }

    private func setupTabBarController() {
        tabBar.tintColor = .systemBlue
    }

    private func setupTabBarViewControllers() {
        viewControllers = [
            createNavController(for: LibraryController(),
                                title: "Медиатека",
                                image: UIImage(systemName: "photo.on.rectangle"),
                                selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill")),

            createNavController(for: ForYouController(),
                                title: "Для Вас",
                                image: UIImage(systemName: "heart.text.square"),
                                selectedImage: UIImage(systemName: "heart.text.square.fill")),

            createNavController(for: AlbumsController(),
                                title: "Альбомы",
                                image: UIImage(systemName: "folder"),
                                selectedImage: UIImage(systemName: "folder.fill")),

            createNavController(for: SearchController(),
                                title: "Поиск",
                                image: UIImage(systemName: "magnifyingglass"),
                                selectedImage: UIImage(systemName: "magnifyingglass"))
        ]
    }

    private func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage?,
                                         selectedImage: UIImage?) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }

}
