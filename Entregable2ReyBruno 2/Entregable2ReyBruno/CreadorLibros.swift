//
//  CreadorLibros.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 5/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import Foundation

class CreadorLibros {
    
    
    func obtenerLibros(){
        let arrayALeer = CreadorCategorias().obtenerCategorias()
       
        for categoria in arrayALeer{
            
            let categoriaS = categoria
            let arrayDiccionarios = categoriaS.arrayDiccionarioLibro
            
            for lb in arrayDiccionarios{
                let newLibro = Libro(diccionarioLibro:lb)
                categoriaS.books.append(newLibro)
            }
        }
        
    }
}

/*class RestaurantService{
 
 func obtenerRestaurantes() -> [Restaurant]{
 let array = PlistManager.readArray(name: "restaurantes")
 
 var arrayResultado:[Restaurant] = []
 for d in array{
 let newRestauraunt = Restaurant(diccionario:d)
 arrayResultado.append(newRestauraunt)
 }
 return arrayResultado
 }
 } */

