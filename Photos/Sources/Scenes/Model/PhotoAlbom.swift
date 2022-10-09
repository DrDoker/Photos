//
//  PhotoAlbom.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import Foundation

struct PhotoAlbum {
    var title: String
    var image: String
}

extension PhotoAlbum {
    static var albums = [
        // First section
        [PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my")],
        // Second section
        [PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my"),
         PhotoAlbum(title: "Недавние", image: "my")],
        // Third section
        [PhotoAlbum(title: "Видео", image: "video"),
         PhotoAlbum(title: "Селфи", image: "person.crop.square"),
         PhotoAlbum(title: "Фото Live Photos", image: "livephoto"),
         PhotoAlbum(title: "Портреты", image: "cube"),
         PhotoAlbum(title: "Панорамы", image: "pano"),
         PhotoAlbum(title: "Таймлапс", image: "timelapse"),
         PhotoAlbum(title: "Серии", image: "square.3.layers.3d.down.right")],
        // Fourth section
        [PhotoAlbum(title: "Импортированные", image: "square.and.arrow.down"),
         PhotoAlbum(title: "Скрытые", image: "eye.slash"),
         PhotoAlbum(title: "Недавно удаленные", image: "trash")]
    ]
}
