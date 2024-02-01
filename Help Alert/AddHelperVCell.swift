//
//  AddHelperVC.swift
//  Help Alert
//
//  Created by Jeffin on 13/12/23.
//

import UIKit

class AddHelperVCell: UITableViewCell {
    
    @IBOutlet weak var addHelperButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addHelperButton.layer.cornerRadius = 5
        addHelperButton.layer.borderWidth = 1
        addHelperButton.layer.borderColor = UIColor.black.cgColor
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
        // Configure the view for the selected state
    }
    @IBAction func addHelperTapped(_ sender: UIButton) {
        
    }
    

}
