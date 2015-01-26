//
//  Subject.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 26/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class Subject: NSManagedObject {

    @NSManaged var identifier: NSNumber
    @NSManaged var name: String
    @NSManaged var questions: NSSet
    @NSManaged var quizes: NSSet

}
