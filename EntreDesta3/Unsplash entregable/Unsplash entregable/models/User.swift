//
//  User.swift
//  Unsplash entregable
//
//  Created by Digital House on 6/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation

class User{
    
    var name:String?
    var location:String?
    var bio:String?
    var avatar:String?
    
    init (user:[String:AnyObject]) {
        self.name = user["name"] as? String ?? "no-user"
        self.location = user["location"] as? String ?? "no-location"
        self.bio = user["bio"] as? String ?? "This user doesn`t have a biography."
        if let profileImage = user["profile_image"]{
        self.avatar = profileImage["medium"] as? String
        }
        
    
    }
    
}
