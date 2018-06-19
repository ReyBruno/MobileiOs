//
//  BooksTableViewController.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 5/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import UIKit

class BooksTableViewController: UITableViewController, listenerNuevoLibro {
    func addLibro(libro: Libro, categoria:Int) {
        self.categorias[categoria].books.append(libro)
        self.tableView.reloadData()
    }
    

    var categorias = CreadorCategorias().obtenerCategorias()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categorias = CreadorCategorias().obtenerCategorias()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categorias.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
      
        return categorias[section].books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "libroCell", for: indexPath) as! BookTableViewCell
        let libro = categorias[indexPath.section].books[indexPath.row]
        cell.autorLibro.text = libro.author
        cell.TituloLibro.text = libro.title
        cell.stockLibro.text = "Stock: " + String(libro.stock)
        
        // Configure the cell...

        return cell
    }
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        if let destination = segue.destination as? BookDetailViewController{
            if let index = tableView.indexPathForSelectedRow {
                let libro = categorias[index.section].books[index.row]
                destination.miLibro = libro
                let categoria = self.categorias[index.section]
                destination.categoriaDelLibro = categoria
            }
        }
        
        if let destination = segue.destination as? BookAddViewController{
            destination.listenerNuevoLibro = self
        }
    }
    
    
    
}

    

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


