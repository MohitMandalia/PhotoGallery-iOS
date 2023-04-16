//
//  GalleryRepositoryImpl.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 03/04/23.
//

import Foundation
import Alamofire

final class GalleryRepositoryImpl: GalleryRepository {
    
    var api: Api
    
    init(api: Api) {
        self.api = api
    }
    
    func getImages(query: String, completion:  @escaping ([Gallery]?) -> Void) {
        api.getImages(query: query) { galleryWrapperDTO in
            let galleryDTOs = galleryWrapperDTO?.hits
            let gallerys = galleryDTOs?.compactMap { $0.toGallery() }
            completion(gallerys)
        }
    }
    
    func getImagesById(id: Int) {
        // some code
    }
    
    
}
