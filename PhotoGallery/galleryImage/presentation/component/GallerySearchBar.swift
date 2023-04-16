//
//  GallerySearchBar.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 15/04/23.
//

import SwiftUI

struct GallerySearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Search `fruits`", text: $searchText)
            Spacer()
            Image(systemName: "magnifyingglass")
        }
        .frame(maxWidth: .infinity,maxHeight: 40)
        .shadow(radius: 10)
        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
    }
}

struct GallerySearchBar_Previews: PreviewProvider {
    static var previews: some View {
        GallerySearchBar(
            searchText: .constant("Search...")
        )
    }
}
