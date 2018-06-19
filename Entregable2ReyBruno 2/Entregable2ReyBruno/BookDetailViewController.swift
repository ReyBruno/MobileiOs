//
//  BookDetailViewController.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 19/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stockLabel: UILabel!
    @IBOutlet weak var lenguageLabel: UILabel!
    @IBOutlet weak var isbnLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    var miLibro:Libro?
    var categoriaDelLibro:Categoria?
    
    func configurarDetalles(libro: Libro){
        priceLabel.text = "$" + String(libro.price)
        stockLabel.text = "Stock: " + String(libro.stock)
        lenguageLabel.text = "Language: " + libro.language
        isbnLabel.text = "Isbn: " + libro.isbn
        authorLabel.text = "Author: " + libro.author
        titleLabel.text = libro.title
        if let nombreCategoria = categoriaDelLibro?.name{
            categoryLabel.text = "Category: " + nombreCategoria
            
        } else{
            categoryLabel.text = "Category: No Category"
        }
        
}
 
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let libro = miLibro{
        configurarDetalles(libro: libro)
        }
       // self.voteAvarage = dictionary["vote_avarage"] as? Double ?? -1
        
       
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
