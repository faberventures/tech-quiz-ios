//
//  UserAnswer.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 26/01/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class UserAnswer: NSManagedObject {

    @NSManaged var identifier: NSNumber
    @NSManaged var answer: NSManagedObject
    @NSManaged var userQuiz: UserQuiz

}
