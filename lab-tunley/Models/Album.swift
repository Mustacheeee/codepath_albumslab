//
//  Album.swift
//  lab-tunley
//
//  Created by 趙藝鑫 on 2/20/24.
//

import Foundation

struct AlbumSearchResponse: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let artworkUrl100: URL
}
