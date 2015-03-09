//
//  NSURL+QueryParameters.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 16/02/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit

extension NSURL {
    
    func queryParams() -> [String: AnyObject] {
        if let queryString = self.query {
            return queryString.queryParams()
        }
        return [String:AnyObject]()
    }
    
}
