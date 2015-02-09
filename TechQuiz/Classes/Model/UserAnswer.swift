//
//  UserAnswer.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 09/02/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class UserAnswer: NSManagedObject {

    @NSManaged var identifier: NSNumber
    @NSManaged var answer: Answer
    @NSManaged var userQuiz: UserQuiz

}
