//
//  GetGalleryImages.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 16/04/23.
//

import Foundation

final class GetGalleryImagesUseCase {
    
    var repository: GalleryRepository = DI.sharedInstance.provideGalleryRepository()
    
    init(){
    }
    
    func execute(query: String, completion:  @escaping ([Gallery]?) -> Void) {
        
        DispatchQueue.global(qos: .background).async { [self] in
            repository.getImages(query: query) { gallery in
                completion(gallery)
            }
        }
    }
}
