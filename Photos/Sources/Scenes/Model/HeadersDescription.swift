//
//  HeadersDescription.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import Foundation

struct Header {
    var title: String
    var subtitle: String?
}

extension Header {
    static var headers = [
        Header(title: "Мои альбомы", subtitle: "Все"),
        Header(title: "Общие альбомы", subtitle: "Все"),
        Header(title: "Типы медиафайлов", subtitle: nil),
        Header(title: "Другое", subtitle: nil)
    ]
}
