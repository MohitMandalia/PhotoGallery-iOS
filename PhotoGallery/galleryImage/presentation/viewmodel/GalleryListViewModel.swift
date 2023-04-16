//
//  GalleryListViewModel.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 14/04/23.
//

import Foundation

extension GalleryListScreen {
    @MainActor class GalleryListViewModel: ObservableObject {
        var getGalleryImagesUseCase: GetGalleryImagesUseCase = DI.sharedInstance.provideGetGalleryImagesUseCase()
        
        @Published var searchText = "" {
            didSet {
                loadGalleryList(query: searchText)
            }
        }
        
        @Published private(set) var galleryList = [Gallery]()
        
        init(){
            
        }
        
        func loadGalleryList(query: String = "fruits") {
            getGalleryImagesUseCase.execute(query: query) { galleryList in
                if galleryList == nil {
                    return
                }
                
                self.galleryList = galleryList!
            }
        }
    }
}
