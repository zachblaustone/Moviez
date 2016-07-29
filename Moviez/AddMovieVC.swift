//
//  AddMovieVC.swift
//  Moviez
//
//  Created by Zachary Blaustone on 7/22/16.
//  Copyright © 2016 Pryzm. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieDesc: UITextField!
    @IBOutlet weak var imdbMovieLink: UITextField!
    @IBOutlet weak var imdbMoviePlot: UITextField!
    @IBOutlet weak var movieImg: UIImageView!

    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        movieImg.layer.cornerRadius = 4.0
        movieImg.clipsToBounds = true

    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func createMovie(sender: AnyObject!) {
        if let title = movieTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movies", inManagedObjectContext: context)!
            let movie = Movies(entity: entity, insertIntoManagedObjectContext: context)
            movie.title = movieTitle.text
            movie.setMovieImg(movieImg.image!)
            movie.moviedescription = movieDesc.text
            movie.imdblink = imdbMovieLink.text
            movie.imdbplot = imdbMoviePlot.text
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie...")
            }
            
            dismissViewControllerAnimated(true, completion: nil)
        }
        
    }


}
