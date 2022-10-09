//
//  SearchView.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit

class SearchView: UIView {
    // MARK: - Outlets
    
    lazy var search: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "Search"
        return search
    }()
    
    //MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .systemBackground
        
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
}
