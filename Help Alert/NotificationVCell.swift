//
//  NotificationVCell.swift
//  Help Alert
//
//  Created by Jeffin on 10/01/24.
//

import UIKit

class NotificationVCell: UITableViewCell {

    @IBOutlet weak var bellIconUIView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        bellIconUIView.layer.cornerRadius = 20
    }

}
