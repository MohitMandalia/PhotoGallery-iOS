//
//  DiContainer.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 04/04/23.
//

import Foundation
import Swinject

// refactor this to implement Swinject
class DI {
    
    static let sharedInstance = DI()
    
    private lazy var galleryRepository: GalleryRepository = {
        return GalleryRepositoryImpl(api: self.api)
    }()
    
    private lazy var api: Api = {
        return Api(apiClient: self.apiClient)
    }()
    
    private lazy var apiClient: ApiClient = {
        return ApiClient()
    }()
    
    private init() {}
    
    func provideGalleryRepository() -> GalleryRepository {
        return galleryRepository
    }
    
    func provideGetGalleryImagesUseCase() -> GetGalleryImagesUseCase {
        return GetGalleryImagesUseCase()
    }
}
