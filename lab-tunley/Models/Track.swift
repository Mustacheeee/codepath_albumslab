//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct

struct Track: Decodable {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL

    // Detail properties
    let collectionName: String
    let primaryGenreName: String
//    let releaseDate: Date
    let trackTimeMillis: Int
}
struct TracksResponse: Decodable {
    let results: [Track]
}


// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Track {

}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
