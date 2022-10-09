//
//  ViewController.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit

class AlbumsController: UIViewController {

    private var model: [[PhotoAlbum]]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = AlbumsView()
        model = PhotoAlbum.albums
        setupNavigationBar()
    }

    private func setupNavigationBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                           target: self,
                                                           action: #selector(addPhotoAlbum))
    }

    // MARK: - Actions

    @objc func addPhotoAlbum() {
        print("Add")
    }
}

