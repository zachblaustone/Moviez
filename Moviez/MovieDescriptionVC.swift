//
//  MovieDescriptionVC.swift
//  Moviez
//
//  Created by Zachary Blaustone on 7/23/16.
//  Copyright © 2016 Pryzm. All rights reserved.
//

import UIKit

class MovieDescriptionVC: UIViewController {

    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var imdbPlot: UILabel!
    @IBOutlet weak var imdbLink: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    
    var viaSegueDescMovie = ""
    var viaSegueTitleMovie = ""
    var viaSeguePlotImdb = ""
    var viaSegueLinkImdb = ""
    var viaSegueMovieImg: UIImage!
    
    
    var movie: Movies!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    override func viewDidAppear(animated: Bool) {

        
    }
    
    func updateUI() {
        movieDesc.text = movie.moviedescription
        movieTitle.text = movie.title
        imdbPlot.text = movie.imdbplot
        imdbLink.text = movie.imdblink
        movieImg.image = movie.getMovieImg()
    }
    
}
