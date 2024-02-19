//
//  File.swift
//  movieTable1
//
//  Created by Yixin Zhao on 1/28/24.
//

import Foundation

struct Track {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
}

extension Track {


    static var mockTracks: [Track]  = [
        Track(trackName: "Ice Cream",
              artistName: "BLACKPINK & Selena Gomez",
              artworkUrl100: URL(string:"https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/c3/64/46/c364465f-6271-8aae-93a8-b9979d2befe5/20UMGIM82075.rgb.jpg/100x100bb.jpg")!),
        Track(trackName: "Sour Candy",
              artistName: "Lady Gaga & BLACKPINK",
              artworkUrl100: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!),
        Track(trackName: "WHISTLE",
              artistName: "BLACKPINK",
              artworkUrl100: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/89/eb/82/89eb82a7-52ec-9e02-87e9-fcc0ac7e0377/BLACKPINK_SQUARE2-1.jpg/100x100bb.jpg")!)
    ]

}
