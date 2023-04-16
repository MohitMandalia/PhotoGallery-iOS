//
//  GalleryRepository.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 03/04/23.
//

import Foundation

protocol GalleryRepository {
    func getImages(query: String, completion: @escaping ([Gallery]?) -> Void)
    func getImagesById(id: Int)
}
