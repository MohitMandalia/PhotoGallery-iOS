//
//  NetworkConfiguration.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 04/04/23.
//

import Foundation

final class NetworkConfiguration {
    
    static let shared = NetworkConfiguration()
    
    private init() {}
    
    let apiKey = "33273583-1cf968b189ad8dd9c029853d0"
    
    var baseURL: String {
        "https://pixabay.com"
    }
}
