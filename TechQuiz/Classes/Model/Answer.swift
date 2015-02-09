//
//  Answer.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 09/02/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class Answer: NSManagedObject {

    @NSManaged var correct: NSNumber
    @NSManaged var identifier: NSNumber
    @NSManaged var text: String
    @NSManaged var question: Question
    @NSManaged var userAnswers: NSSet

}
