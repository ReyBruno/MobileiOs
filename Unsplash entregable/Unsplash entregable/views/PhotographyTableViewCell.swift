//
//  PhotographyTableViewCell.swift
//  Unsplash entregable
//
//  Created by Digital House on 27/6/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import UIKit
import Kingfisher

class PhotographyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateView: UIView!
    
    func setup(resultado:Resultado){
        usernameLabel.text = resultado.name
        //
        let avatarString = resultado.medium
        if let avatarImagen = avatarString{
            let avatarURL = URL(string: avatarImagen)
            self.avatarImage.kf.setImage(with: avatarURL)
        }
        //
        let mainString = resultado.regular
        if let mainImagen = mainString{
            let mainURL = URL(string:mainImagen)
            self.mainImage.kf.setImage(with: mainURL)
        }
        //
         dateLabel.text = resultado.date
        //
        dateView.backgroundColor = UIColor(displayP3Red: 229/255, green: 229/255, blue: 229/255, alpha: 229/255)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
