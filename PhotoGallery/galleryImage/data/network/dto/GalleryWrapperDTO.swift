//
//  GalleryWrapperDTO.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 14/04/23.
//

import Foundation

struct GalleryWrapperDTO : Codable{
    let hits: [GalleryDTO]
    let total: Int
    let totalHits: Int
    
    enum CodingKeys:String, CodingKey {
        case hits = "hits"
        case total = "total"
        case totalHits = "totalHits"
    }
}
