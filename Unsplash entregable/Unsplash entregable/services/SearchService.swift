//
//  SearchService.swift
//  Unsplash entregable
//
//  Created by Digital House on 27/6/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation

class SearchService{
    func search(query:String, completion: @escaping ([Resultado]) -> Void){
        let dao = SearchDao()
        
        dao.getResultadosFromApiForQuery(query: query) { (resultados) in
            completion(resultados)
        }
        
        
    }
}
