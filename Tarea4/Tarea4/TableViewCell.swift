//
//  TableViewCell.swift
//  Tarea4
//
//  Created by Pamela on 24/03/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imagen: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
