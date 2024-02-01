//
//  SignUpTCell.swift
//  Help Alert
//
//  Created by Jeffin on 06/01/24.
//

import UIKit

protocol SignUpProtocol{
    func logInButton()
}

class SignUpTCell: UITableViewCell {

    @IBOutlet weak var passwordTextFieldView: UIView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var phoneNumberBGView: UIView!
    @IBOutlet weak var signUpWithAppleButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    var SignUpCellDelegate: SignUpProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        passwordTextFieldView.layer.borderWidth = 1
        passwordTextFieldView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        passwordTextFieldView.layer.cornerRadius = 10
        
        
            phoneNumberBGView.layer.borderWidth = 1
            phoneNumberBGView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
            phoneNumberBGView.layer.cornerRadius = 10
        
        
        signUpButton.layer.cornerRadius = 10
        signUpWithAppleButton.layer.cornerRadius = 10
        passwordTextField.addPaddingToTextField()
        
        
    }

    @IBAction func logInTapped(_ sender: UIButton) {
        
        SignUpCellDelegate?.logInButton()
        
        print("Hi")
    }
}
