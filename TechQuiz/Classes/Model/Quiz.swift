//
//  Quiz.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 26/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class Quiz: NSManagedObject {

    @NSManaged var identifier: NSNumber
    @NSManaged var questions: NSOrderedSet
    @NSManaged var subject: NSManagedObject
    @NSManaged var userQuizes: NSSet

}
