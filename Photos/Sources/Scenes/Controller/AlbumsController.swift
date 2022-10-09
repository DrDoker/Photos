//
//  ViewController.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit

class AlbumsController: UIViewController {

    private var model: [[PhotoAlbum]]?

    private var albumsView: AlbumsView? {
        guard isViewLoaded else { return nil }
        return view as? AlbumsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = AlbumsView()
        model = PhotoAlbum.albums
        setupNavigationBar()

        albumsView?.photoCollection.dataSource = self
        albumsView?.photoCollection.delegate = self
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

extension AlbumsController: UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return model?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?[section].count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstSectionCell.identifier, for: indexPath) as? FirstSectionCell
            cell?.configure(album: PhotoAlbum.albums[indexPath.section][indexPath.item])
            cell?.numberTitle.text = String(Int.random(in: 35...90))
            return cell ?? UICollectionViewCell()
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondSectionCell.identifier, for: indexPath) as? SecondSectionCell
            cell?.configure(album: PhotoAlbum.albums[indexPath.section][indexPath.item])
            return cell ?? UICollectionViewCell()
        case 2, 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdAndFourthSectionCell.identifier, for: indexPath) as? ThirdAndFourthSectionCell
            cell?.configure(album: PhotoAlbum.albums[indexPath.section][indexPath.item])
            cell?.numberTitle.text = String(Int.random(in: 80...120))
            if (indexPath.section == 2 && indexPath.item == 6) || (indexPath.section == 3 && indexPath.item == 2) {
                cell?.bottomView.backgroundColor = UIColor.clear
            } else {
                cell?.bottomView.backgroundColor = UIColor.systemGray5
            }
            return cell ?? UICollectionViewCell()
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            cell.backgroundColor = .systemYellow
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: AlbumHeaderReusableView.identifier, for: indexPath) as? AlbumHeaderReusableView
        header?.configure(header: Header.headers[indexPath.section])
        return header ?? AlbumHeaderReusableView()
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("Нажата ячейка - \(PhotoAlbum.albums[indexPath.section][indexPath.item].title)")
    }
}
