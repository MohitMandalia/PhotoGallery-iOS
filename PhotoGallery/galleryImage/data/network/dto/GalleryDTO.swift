//
//  GalleryDTO.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 13/04/23.
//

import Foundation

struct GalleryDTO: Codable {
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
    
    enum CodingKeys: String, CodingKey {
        case collections = "collections"
        case comments = "comments"
        case downloads = "downloads"
        case id = "id"
        case imageHeight = "imageHeight"
        case imageSize = "imageSize"
        case imageWidth = "imageWidth"
        case largeImageURL = "largeImageURL"
        case likes = "likes"
        case pageURL = "pageURL"
        case previewHeight = "previewHeight"
        case previewURL = "previewURL"
        case previewWidth = "previewWidth"
        case tags = "tags"
        case type = "type"
        case user = "user"
        case userImageURL = "userImageURL"
        case userId = "user_id"
        case views = "views"
        case webFormatHeight = "webformatHeight"
        case webFormatURL = "webformatURL"
        case webFormatWidth = "webformatWidth"
    }
}

extension GalleryDTO {
    func toGallery() -> Gallery {
        return Gallery(
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
