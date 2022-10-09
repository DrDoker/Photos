//
//  ViewController.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit

class AlbumsController: UIViewController {
    
    private var model: [PhotosSections]?
    
    private var albumsView: AlbumsView? {
        guard isViewLoaded else { return nil }
        return view as? AlbumsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = AlbumsView()
        model = PhotosSections.albumSections
        setupNavigationBar()
        setupCollection()
    }

    // MARK: - Actions
    
    @objc func addPhotoAlbum() {
        print("Add")
    }
}

extension AlbumsController {
    private func setupNavigationBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                           target: self,
                                                           action: #selector(addPhotoAlbum))
    }
}

extension AlbumsController {
    private func setupCollection() {
        albumsView?.photoCollection.dataSource = self
        albumsView?.photoCollection.delegate = self
    }
}

extension AlbumsController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return model?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?[section].photoAlbom.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let photosSection = model?[indexPath.section] else { return UICollectionViewCell() }
        
        switch photosSection.type {
        case .myAlbomsSection:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbomsSectionCell.identifier, for: indexPath) as? MyAlbomsSectionCell
            guard let cell = cell else { return UICollectionViewCell()}
            let albumModel = photosSection.photoAlbom[indexPath.item]
            cell.configureAlbumTitle(albumModel.title)
            cell.configureImage(albumModel.image)
            cell.numberTitle.text = String(Int.random(in: 25...90))
            return cell
        case .sharedAlbomsSection:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SharedAlbomsSectionCell.identifier, for: indexPath) as? SharedAlbomsSectionCell
            guard let cell = cell else { return UICollectionViewCell()}
            let albumModel = photosSection.photoAlbom[indexPath.item]
            cell.configureAlbumTitle(albumModel.title)
            cell.configureImage(albumModel.image)
            return cell
        case .tableSection:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TableSectionCell.identifier, for: indexPath) as? TableSectionCell
            guard let cell = cell else { return UICollectionViewCell()}
            let albumModel = photosSection.photoAlbom[indexPath.item]
            cell.configureIcon(albumModel.image)
            cell.configureTitle(albumModel.title)
            cell.numberTitle.text = String(Int.random(in: 80...120))
            if (indexPath.section == 2 && indexPath.item == 6) || (indexPath.section == 3 && indexPath.item == 2) {
                cell.bottomView.backgroundColor = UIColor.clear
            } else {
                cell.bottomView.backgroundColor = UIColor.systemGray5
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: AlbumHeaderReusableView.identifier, for: indexPath) as? AlbumHeaderReusableView
        guard let header = header else { return UICollectionReusableView()}
        let headerModel = model?[indexPath.section].header
        header.configureTitle(headerModel?.title)
        header.configureSubtitleButton(headerModel?.subtitle)
        return header 
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("Нажата ячейка - \(model?[indexPath.section].photoAlbom[indexPath.item].title ?? "")")
    }
}
