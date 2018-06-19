//
//  BookAddViewController.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 19/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import UIKit

protocol listenerNuevoLibro{
    func addLibro(libro:Libro, categoria:Int)
}

class BookAddViewController: UIViewController {

    
    @IBOutlet weak var categoriaSegmentedControl: UISegmentedControl!
    @IBOutlet weak var titlefield: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var isbnField: UITextField!
    @IBOutlet weak var lenguajeField: UITextField!
    @IBOutlet weak var stockField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    
    var listenerNuevoLibro:listenerNuevoLibro?
    
    
    
    @IBAction func SaveTapped(_ sender: Any) {
        if let titulo = titlefield.text,let author = authorField.text, let isbn = isbnField.text,let lenguaje = lenguajeField.text, let stock = stockField.text, let stockInt = Int(stock), let precio = priceField.text, let precioDouble = Double(precio){
            if precioDouble >= 0{
              let nuevoLibro = Libro(title: titulo, author: author, isbn: isbn, stock: stockInt, price: precioDouble, language: lenguaje)
               listenerNuevoLibro?.addLibro(libro: nuevoLibro, categoria: categoriaSegmentedControl.selectedSegmentIndex)
                navigationController?.popViewController(animated: true)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
