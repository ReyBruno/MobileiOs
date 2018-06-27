//
//  WelcomeViewController.swift
//  Unsplash entregable
//
//  Created by Digital House on 27/6/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var searchField: UITextField!
    
    @IBAction func searchTapped(_ sender: Any) {
        if let query = searchField.text{
            if query.count > 0{
                self.performSegue(withIdentifier: "searchTapped", sender: nil)
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
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        if let destination = segue.destination as? PhotographyTableViewController{
            destination.query = searchField.text
            destination.title = searchField.text
            
        }
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
