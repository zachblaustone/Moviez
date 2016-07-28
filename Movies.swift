//
//  Movies.swift
//  Moviez
//
//  Created by Zachary Blaustone on 7/22/16.
//  Copyright © 2016 Pryzm. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movies: NSManagedObject {

    func setMovieImg(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
