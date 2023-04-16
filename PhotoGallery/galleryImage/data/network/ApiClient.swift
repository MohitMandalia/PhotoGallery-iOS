//
//  ApiClient.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 04/04/23.
//

import Foundation
import Alamofire

final class ApiClient {
    
    private let session = Session.default
    
    func getRequest(
        requestUrl: String,
        searchQuery: String,
        completion: @escaping (GalleryWrapperDTO?) -> Void
    ) {
        let queryParams = [
            "key":NetworkConfiguration.shared.apiKey,
            "q": searchQuery
        ]
        session.request(
            requestUrl,
            method: .get,
            parameters: queryParams
        ).validate()
            .responseDecodable(of: GalleryWrapperDTO.self) { response in
                guard let galleryWrapperDTO = response.value else {
                    return completion(nil)
                }

                completion(galleryWrapperDTO)
            }
    }
    
}

final class Api {
    var apiClient: ApiClient
    
    init(apiClient: ApiClient) {
        self.apiClient = apiClient
    }
    
    func getImages(
        query: String,
        pathParams: [String: String]? = [:],
        completion: @escaping (GalleryWrapperDTO?) -> Void
    ){
        
        apiClient.getRequest(
            requestUrl: NetworkConfiguration.shared.baseURL + Endpoints.api.rawValue,
            searchQuery: query,
            completion: completion
        )
        
    }
    
}
