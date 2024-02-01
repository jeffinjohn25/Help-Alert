//
//  ForgotPasswordTCell.swift
//  Help Alert
//
//  Created by Jeffin on 05/01/24.
//

import UIKit

class ForgotPasswordTCell: UITableViewCell {

    @IBOutlet weak var topTitleImageView: UIImageView!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var sendPinButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        topTitleImageView.image = UIImage(named: "ForgotPasswordImage")
        
        emailTextField.addPaddingToTextField()
        sendPinButton.layer.cornerRadius = 10
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}



