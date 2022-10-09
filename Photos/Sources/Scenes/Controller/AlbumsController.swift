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
    }
}

