//
//  Question.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 26/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class Question: NSManagedObject {

    @NSManaged var identifier: NSNumber
    @NSManaged var level: NSNumber
    @NSManaged var text: String
    @NSManaged var answers: NSSet
    @NSManaged var quizes: NSSet
    @NSManaged var subject: NSManagedObject

}