//
//  HistoryTCell.swift
//  Help Alert
//
//  Created by Jeffin on 15/12/23.
//

import UIKit

class HistoryTCell: UITableViewCell {

    @IBOutlet weak var sendReceiveImageView: UIView!
    @IBOutlet weak var histotyListBGView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        histotyListBGView.layer.cornerRadius = 10
        sendReceiveImageView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
