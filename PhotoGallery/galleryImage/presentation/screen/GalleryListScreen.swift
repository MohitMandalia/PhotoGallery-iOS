//
//  GalleryListScreen.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 13/04/23.
//

import SwiftUI

struct GalleryListScreen: View {
    
    @StateObject var viewModel = GalleryListViewModel()
    
    var adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        VStack{
            GallerySearchBar(
                searchText: $viewModel.searchText
            )
            .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20){
                    ForEach(viewModel.galleryList, id: \.self.id){galleryItem in
                        Button(action:{}){
                            GalleryItem(gallery: galleryItem)
                                .frame(width: 170)
                        }
                    }
                }.onAppear() {
                    viewModel.loadGalleryList()
                }
            }
            .padding()
        }
    }
}

struct GalleryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        GalleryListScreen()
    }
}
