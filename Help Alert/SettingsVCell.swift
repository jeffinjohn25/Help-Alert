//
//  SettingsVCell.swift
//  Help Alert
//
//  Created by Jeffin on 11/01/24.
//

import UIKit

class SettingsVCell: UITableViewCell {

    @IBOutlet weak var profileUIView: UIView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var setSiriPhaseButton: UIButton!
    @IBOutlet weak var call911Button: UIButton!
    @IBOutlet weak var callEmergencyContactButton: UIButton!
    @IBOutlet weak var additionalActionsView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        editButton.layer.cornerRadius = 5
        editButton.layer.borderWidth = 1
        editButton.layer.borderColor = UIColor.black.cgColor
        
        setSiriPhaseButton.imageView?.tintColor = UIColor.red
        call911Button.imageView?.tintColor = UIColor.red
        callEmergencyContactButton.imageView?.tintColor = UIColor.red
        
        profileUIView.layer.cornerRadius = 10 
        additionalActionsView.layer.cornerRadius = 10
    }
    

}
