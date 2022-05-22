//
//  MovieCollectionViewCell.swift
//  A3
//
//  Created by Wangyang Wu on 11/5/2022.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(with movie: Movie) {
        movieImageView.image = movie.image
        titleLabel.text = movie.title
        movieImageView.layer.shadowColor = UIColor.black.cgColor
        movieImageView.layer.shadowRadius = 3.0
        movieImageView.layer.shadowOpacity = 1.0
        movieImageView.layer.shadowOffset = CGSize(width: 4, height: 4)
        movieImageView.layer.masksToBounds = false
    }
}
