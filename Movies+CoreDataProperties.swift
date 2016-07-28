//
//  Movies+CoreDataProperties.swift
//  Moviez
//
//  Created by Zachary Blaustone on 7/23/16.
//  Copyright © 2016 Pryzm. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movies {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var moviedescription: String?
    @NSManaged var imdblink: String?
    @NSManaged var imdbplot: String?

}
