//
//  HelpListVC.swift
//  Help Alert
//
//  Created by Jeffin on 14/12/23.
//

import UIKit

class HelpListVCell: UITableViewCell {
    
   

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var nameInitailUIView: UIView!
    @IBOutlet weak var nameInitialLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var uiViewBorder: UIView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        nameInitailUIView.layer.cornerRadius = 20
        uiViewBorder.layer.cornerRadius = 10
        
        // Configure the view for the selected state
    }

}
