//
//  User.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 09/02/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class User: NSManagedObject {

    @NSManaged var facebookId: String
    @NSManaged var identifier: NSNumber
    @NSManaged var linkedinId: String
    @NSManaged var userQuizes: NSSet

}
