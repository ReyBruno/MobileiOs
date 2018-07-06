//
//  SearchDao.swift
//  Unsplash entregable
//
//  Created by Digital House on 27/6/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation
import Alamofire

class SearchDao{
    
    func getResultadosFromApiForQuery(query:String,page:Int,completion: @escaping ([Resultado]) -> Void){
        let url = "https://api.unsplash.com/search/photos?client_id=7687549ae04e25e1c51b00bb9804c2f57ce83ad89698c2e996e4b23027fc274e&page=\(page)&query=\(query)"
        Alamofire.request(url).responseJSON{ (response) in
            if let mainDictionary = response.result.value as? [String:AnyObject]{
                if let results = mainDictionary["results"] as? [[String:AnyObject]]{
                    var resultadosArray:[Resultado] = []
                    for aDictionary in results{
                        let newResultado = Resultado(dictionary: aDictionary)
                        resultadosArray.append(newResultado)
                    }
                    
                    completion(resultadosArray)
                } else{
                    completion([])
                }
            }
            
        }
        
    }
}
