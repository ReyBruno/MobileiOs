//
//  DetailViewController.swift
//  Unsplash entregable
//
//  Created by Digital House on 27/6/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    var resultadoDetallar:Resultado?

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var ubicacionLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let resultadoV = self.resultadoDetallar{
            setup(resultado: resultadoV)
        }
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup(resultado:Resultado){
        usernameLabel.text = resultado.user?.name ?? "no-name"
        ubicacionLabel.text = resultado.user?.location ?? "no-ubication"
        bioLabel.text = resultado.user?.bio ?? "This user doesn`t have a biography."
        
        
        let urlS = resultado.image?.regular
        if let urlV = urlS{
            let url = URL(string:urlV)
            mainImageView?.kf.setImage(with: url)
            
        }
        
        let urlSA = resultado.user?.avatar
        if let urlV = urlSA{
            let url = URL(string: urlV)
            self.avatarImage.kf.setImage(with: url)
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
