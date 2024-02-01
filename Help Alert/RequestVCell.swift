//
//  RequestVCell.swift
//  Help Alert
//
//  Created by Jeffin on 09/01/24.
//

import UIKit

class RequestVCell: UITableViewCell {

    @IBOutlet weak var requestTopImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        requestTopImageView.image = UIImage(named: "Request")
    }

}
