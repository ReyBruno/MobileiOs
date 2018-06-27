//
//  Resultado.swift
//  Unsplash entregable
//
//  Created by Digital House on 27/6/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation

class Resultado{
    var small:String?
    var regular:String?
    var full:String?
    var name:String?
    var location:String?
    var date:String?
    var bio:String?
    var medium:String?
    
    init(dictionary:[String:AnyObject]){
        self.small = dictionary["small"] as? String
        if let urls = dictionary["urls"] as? [String:AnyObject]{
            self.full = urls["full"] as? String
            self.regular = urls["regular"] as? String
        }
        
        
        if let user = dictionary["user"] as? [String:AnyObject]{
            self.name = user["name"] as? String
            self.location = user["location"] as? String
            self.bio = user["bio"] as? String
            if let profileImage = user["profile_image"]{
                self.medium = profileImage["medium"] as? String
            }
            
        }
        
        date = dictionary["created_at"] as? String
        
        
        
    }
    
    
}
