//
//  CreadorCategorias.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 5/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import Foundation

class CreadorCategorias{
    func obtenerCategorias() -> [Categoria]{
        let array = PlistManager.readArray(name:"libros")
        var arrayCategorias:[Categoria] = []
        
        for c in array{
            let nuevaCategoria = Categoria(diccionarioCategoria:c)
            arrayCategorias.append(nuevaCategoria)
            
        }
        
        return arrayCategorias
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
}
*/
