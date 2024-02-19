//
//  ViewController.swift
//  movieTable1
//
//  Created by Yixin Zhao on 1/28/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tracks = Track.mockTracks
        print(tracks)
    }
    var tracks: [Track] = []
    


}

