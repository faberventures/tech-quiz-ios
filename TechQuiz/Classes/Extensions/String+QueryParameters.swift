//
//  String+QueryParameters.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 09/03/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit

extension String {
    
    func queryParams() -> [String: AnyObject] {
        var info : [String: AnyObject] = [String: AnyObject]()
        for parameter in self.componentsSeparatedByString("&"){
            let parts = parameter.componentsSeparatedByString("=")
            if parts.count > 1{
                let key = (parts[0] as String).stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
                let value = (parts[1] as String).stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
                if key != nil && value != nil{
                    info[key!] = value
                }
            }
        }
        return info
    }
    
}