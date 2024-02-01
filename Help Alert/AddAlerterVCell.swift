//
//  AddAlerter.swift
//  Help Alert
//
//  Created by Jeffin on 09/01/24.
//

import UIKit

class AddAlerterVCell: UITableViewCell {

    @IBOutlet weak var addAlerterButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        addAlerterButton.layer.cornerRadius = 5
        addAlerterButton.layer.borderWidth = 1
        addAlerterButton.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
