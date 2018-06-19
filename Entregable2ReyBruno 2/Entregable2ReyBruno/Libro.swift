//
//  Libro.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 5/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import Foundation

class Libro{
    var title:String
    var author:String
    var isbn:String
    var stock:Int
    var price:Double
    var language:String
    
    init(diccionarioLibro:[String:AnyObject]){
        self.title = diccionarioLibro["title"] as? String ?? "noname"
        self.author = diccionarioLibro["author"] as? String ?? "noauthor"
        self.isbn = diccionarioLibro["isbn"] as? String ?? "noisbn"
        self.stock = diccionarioLibro["stock"] as? Int ?? -1
        self.price = diccionarioLibro["price"] as? Double ?? -1
        self.language = diccionarioLibro["language"] as? String ?? "nolenguage"
    }
    
    init(title:String, author:String, isbn:String, stock:Int, price:Double, language:String){
        self.title = title
        self.author = author
        self.isbn = isbn
        self.stock = stock
        self.price = price
        self.language = language
    }
}
