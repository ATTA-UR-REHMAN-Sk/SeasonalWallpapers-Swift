//
//  TableViewCell.swift
//  SeasonWallpaper
//
//  Created by ATTA SK on 19/08/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var Sname: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
