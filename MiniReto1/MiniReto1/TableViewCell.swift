//
//  TableViewCell.swift
//  MiniReto1
//
//  Created by Pamela on 11/03/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var progressBar: UIProgressView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
