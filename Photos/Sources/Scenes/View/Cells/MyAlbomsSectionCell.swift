//
//  FirstSectionCell.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit
import SnapKit

class MyAlbomsSectionCell: UICollectionViewCell {
    
    static let identifier = "MyAlbomsSectionCell"
    
    // MARK: - Outlets
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    private lazy var albumTitle: UILabel = {
        let albumTitle = UILabel()
        albumTitle.textColor = .black
        return albumTitle
    }()
    
    lazy var numberTitle: UILabel = {
        let numberTitle = UILabel()
        numberTitle.textColor = .gray
        return numberTitle
    }()
    
    private lazy var albumInfoStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 2
        return stackView
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        setupHierarchy()
        setupLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setups
    
    func setupHierarchy() {
        contentView.addSubview(imageView)
        albumInfoStack.addArrangedSubview(albumTitle)
        albumInfoStack.addArrangedSubview(numberTitle)
        contentView.addSubview(albumInfoStack)
    }
    
    func setupLayouts() {
        imageView.snp.makeConstraints { make in
            make.top.left.right.equalTo(contentView)
            make.height.equalTo(contentView.snp.height).multipliedBy(0.75)
        }
        
        albumInfoStack.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).multipliedBy(1.05)
        }
    }
    
    // MARK: - Configuration
    
    func configureAlbumTitle(_ title: String?) {
        self.albumTitle.text = title
    }
    
    func configureImage(_ imageName: String?) {
        self.imageView.image = UIImage(named: imageName ?? "")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        albumTitle.text = nil
        numberTitle.text = nil
        imageView.image = nil
    }
}
