//
//  UserQuiz.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 09/02/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import Foundation
import CoreData

class UserQuiz: NSManagedObject {

    @NSManaged var identifier: NSNumber
    @NSManaged var quiz: Quiz
    @NSManaged var user: User
    @NSManaged var userAnswers: NSSet

}
