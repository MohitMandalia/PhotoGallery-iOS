//
//  Extension.swift
//  PhotoGallery
//
//  Created by Mohit Mandalia on 16/04/23.
//

import Foundation

extension String {
    func displayAsTags() -> [String] {
        let tags = self.split(separator: ",").map { string in
            "#\(string.replacingOccurrences(of: " ", with: "").trimmingCharacters(in: .whitespaces))"
        }
        
        return tags
    }
}
