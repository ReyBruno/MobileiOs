//
//  Categoria.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 5/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import Foundation

class Categoria{
    var name:String
    var books:[Libro] = []
    var arrayDiccionarioLibro:[ [String:AnyObject] ]
    
    init(diccionarioCategoria:[String:AnyObject]){
        self.name = diccionarioCategoria["name"] as? String ?? "noname"
        self.arrayDiccionarioLibro = diccionarioCategoria["books"] as? [ [String:AnyObject] ] ?? [[:]]
        
        for lb in arrayDiccionarioLibro{
            let newLibro = Libro(diccionarioLibro:lb)
            books.append(newLibro)
        }
    }
}
