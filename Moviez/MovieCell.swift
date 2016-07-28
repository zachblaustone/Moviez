//
//  MovieCell.swift
//  Moviez
//
//  Created by Zachary Blaustone on 7/22/16.
//  Copyright © 2016 Pryzm. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var imdbLbl: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var imdbPlot: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()

        
        movieImg.layer.cornerRadius = movieImg.frame.size.width / 2
        movieImg.clipsToBounds = true
    }
    
    func configureCell(movie: Movies) {
        movieTitle.text = movie.title
        movieImg.image = movie.getMovieImg()
        imdbLbl.text = movie.imdblink
        movieDesc.text = movie.moviedescription
        imdbPlot.text = movie.imdbplot
    }
    
}
