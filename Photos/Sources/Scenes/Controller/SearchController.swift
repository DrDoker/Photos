//
//  SearchController.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit

class SearchController: UIViewController {

    private var searchView: SearchView? {
        guard isViewLoaded else { return nil }
        return view as? SearchView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view = SearchView()
        setupNavigationBar()
    }
}

extension SearchController {
    private func setupNavigationBar() {
        navigationItem.searchController = searchView?.search
    }
}
