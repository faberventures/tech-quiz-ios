//
//  UserQuiz.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 26/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class UserQuiz: NSManagedObject {

    @NSManaged var identifier: NSNumber
    @NSManaged var quiz: NSManagedObject
    @NSManaged var user: NSManagedObject
    @NSManaged var userAnswers: NSSet

}
