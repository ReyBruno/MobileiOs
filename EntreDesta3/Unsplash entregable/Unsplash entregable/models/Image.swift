//
//  Image.swift
//  Unsplash entregable
//
//  Created by Digital House on 6/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation

class Image{
    var full:String?
    var regular:String?
    
    
    init(image:[String:AnyObject]){
            self.full = image["full"] as? String
            self.regular = image["regular"] as? String
        
        }
    }

