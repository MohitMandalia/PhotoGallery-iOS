//
//  GalleryItem.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 15/04/23.
//

import SwiftUI
import Kingfisher

struct GalleryItem: View {
    var gallery: Gallery
    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 20,
                style: .continuous
            )
            .fill(.white)
            .shadow(radius: 1)
            
            VStack {
                KFImage.url(URL(string: gallery.largeImageURL))
                    .frame(width: 170,height: 170)
                    .clipped()
                    .cornerRadius(10)
                
                Text(gallery.user)
                    .padding(20)
            }
        }
    }
}

struct GalleryItem_Previews: PreviewProvider {
    static var previews: some View {
        GalleryItem(
            gallery: Gallery(collections: 0, comments: 0, downloads: 0, id: 0, imageHeight: 0, imageSize: 0, imageWidth: 0, largeImageURL: "", likes: 0, pageURL: "", previewHeight: 0, previewURL: "", previewWidth: 0, tags: "", type: "", user: "", userImageURL: "", userId: 0, views: 0, webFormatHeight: 0, webFormatURL: "", webFormatWidth: 0)
            )
    }
}
