//
//  Gallery.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 13/04/23.
//

import Foundation

struct Gallery {
    let collections: Int
    let comments: Int
    let downloads: Int
    let id: Int
    let imageHeight: Int
    let imageSize: Int
    let imageWidth: Int
    let largeImageURL: String
    let likes: Int
    let pageURL: String
    let previewHeight: Int
    let previewURL: String
    let previewWidth: Int
    let tags: String
    let type: String
    let user: String
    let userImageURL: String
    let userId: Int
    let views: Int
    let webFormatHeight: Int
    let webFormatURL: String
    let webFormatWidth: Int
}

extension Gallery {
    func toGalleryDTO() -> GalleryDTO {
        return GalleryDTO(
            collections: collections,
            comments: comments,
            downloads: downloads,
            id: id,
            imageHeight: imageHeight,
            imageSize: imageSize,
            imageWidth: imageWidth,
            largeImageURL: largeImageURL,
            likes: likes,
            pageURL: pageURL,
            previewHeight: previewHeight,
            previewURL: previewURL,
            previewWidth: previewWidth,
            tags: tags,
            type: type,
            user: user,
            userImageURL: userImageURL,
            userId: userId,
            views: views,
            webFormatHeight: webFormatHeight,
            webFormatURL: webFormatURL,
            webFormatWidth: webFormatWidth
        )
    }
}
