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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieDesc.text = viaSegueDescMovie
        movieTitle.text = viaSegueTitleMovie
        imdbPlot.text = viaSeguePlotImdb
        imdbLink.text = viaSegueLinkImdb
        movieImg.image = viaSegueMovieImg
        
    }
    
    override func viewDidAppear(animated: Bool) {

        
    }
    
    
    func passToMovieDesc(sender: MovieCell!) {
        viaSegueDescMovie = sender.movieDesc.text!
        viaSegueTitleMovie = sender.movieTitle.text!
        viaSeguePlotImdb = sender.imdbPlot.text!
        viaSegueLinkImdb = sender.imdbLbl.text!
        viaSegueMovieImg = sender.movieImg.image!
        
    }

}
