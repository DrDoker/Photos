//
//  Sections.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import Foundation

enum SectionType {
    case myAlbomsSection
    case sharedAlbomsSection
    case tableSection
}

struct PhotosSections {
    var type: SectionType
    var header: Header
    var photoAlbom: [PhotoAlbum]
}

extension PhotosSections {
    static var albumSections = [
        // My Alboms
        PhotosSections(type: .myAlbomsSection,
                       header: Header(title: "Мои альбомы", subtitle: "Все"),
                       photoAlbom: [PhotoAlbum(title: "Недавние", image: "roka"),
                                    PhotoAlbum(title: "Избранное", image: "bmw"),
                                    PhotoAlbum(title: "Instagram", image: "wr"),
                                    PhotoAlbum(title: "VSCO", image: "serhii"),
                                    PhotoAlbum(title: "Lightroom", image: "we"),
                                    PhotoAlbum(title: "RAW", image: "raw"),
                                    PhotoAlbum(title: "InShot", image: "warszawa")]),
        
        // Shared Alboms
        PhotosSections(type: .sharedAlbomsSection,
                       header: Header(title: "Общие альбомы", subtitle: "Все"),
                       photoAlbom: [PhotoAlbum(title: "Krawow", image: "krakow"),
                                    PhotoAlbum(title: "Montenegro", image: "montenegro"),
                                    PhotoAlbum(title: "New Year", image: "ny"),
                                    PhotoAlbum(title: "Berlin", image: "berlin"),
                                    PhotoAlbum(title: "День Рождения", image: "happy")]),
        
        // Media Types
        PhotosSections(type: .tableSection,
                       header:  Header(title: "Типы медиафайлов", subtitle: nil),
                       photoAlbom: [PhotoAlbum(title: "Видео", image: "video"),
                                    PhotoAlbum(title: "Селфи", image: "person.crop.square"),
                                    PhotoAlbum(title: "Фото Live Photos", image: "livephoto"),
                                    PhotoAlbum(title: "Портреты", image: "cube"),
                                    PhotoAlbum(title: "Панорамы", image: "pano"),
                                    PhotoAlbum(title: "Таймлапс", image: "timelapse"),
                                    PhotoAlbum(title: "Серии", image: "square.3.layers.3d.down.right")]),
        
        // Utilites
        PhotosSections(type: .tableSection,
                       header: Header(title: "Другое", subtitle: nil),
                       photoAlbom: [PhotoAlbum(title: "Импортированные", image: "square.and.arrow.down"),
                                    PhotoAlbum(title: "Скрытые", image: "eye.slash"),
                                    PhotoAlbum(title: "Недавно удаленные", image: "trash")]),
    ]
}
