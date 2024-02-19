//
//  TrackCell.swift
//  movieTable1
//
//  Created by Yixin Zhao on 1/28/24.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    /// Configures the cell's UI for the given track.
    func configure(with track: Track) async {
        trackNameLabel.text = track.trackName
        descriptionLabel.text = track.artistName

        // Load image async via Nuke library image loading helper method
        func configure(with movie: trackImageView) async {
            trackNameLabel.text = movie.title
            descriptionLabel.text = movie.description
                
            do {
                let image = try await ImagePipeline.shared.image(for: movie.posterImageUrl100)
                trackImageView.image = image
            } catch {
                print("Error loading image: \(error)")
            }
        }

    }
}
