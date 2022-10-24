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

    private lazy var soonTitle: UILabel = {
        let lable = UILabel()
        lable.textColor = .systemGray
        lable.font = UIFont.systemFont(ofSize: 27, weight: .regular)
        lable.text = "Available Soon..."
        return lable
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
        addSubview(soonTitle)
    }

    private func setupLayout() {
        soonTitle.snp.makeConstraints { make in
            make.center.equalTo(self)
        }
    }
}
