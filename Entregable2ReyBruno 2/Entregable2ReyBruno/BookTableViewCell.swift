//
//  BookTableViewCell.swift
//  Entregable2ReyBruno
//
//  Created by Digital House on 5/6/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var stockLibro: UILabel!
    @IBOutlet weak var autorLibro: UILabel!
    @IBOutlet weak var TituloLibro: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
