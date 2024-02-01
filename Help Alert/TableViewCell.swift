//
//  TableViewCell.swift
//  Help Alert
//
//  Created by Jeffin on 10/12/23.
//

import UIKit

protocol TableViewCellProtocol {
    func loginButton()
    func forgotButton()
    func signUpButton()
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var passwordTextfieldView: UIView!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var AppleLoginButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    @IBAction func ForgotPasswordTapped(_ sender: UIButton) {
        
        cellDelegate?.forgotButton()
    }
    
    var cellDelegate : TableViewCellProtocol?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        passwordTextfieldView.layer.borderWidth = 1
        passwordTextfieldView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        passwordTextfieldView.layer.cornerRadius = 10
        passwordTextFiled.addPaddingToTextField()
        
        
      
        loginButton.layer.cornerRadius = 10
        AppleLoginButton.layer.cornerRadius = 10
        
        
        
        
        emailTextfield.layer.borderWidth = 1
        emailTextfield.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        emailTextfield.layer.cornerRadius = 10
        emailTextfield.addPaddingToTextField()
        
        
        
        
        // Configure the view for the selected state
    }

    @IBAction func loginWithApplePressed(_ sender: UIButton) {
        cellDelegate?.loginButton()
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        cellDelegate?.loginButton()
       
    }
    @IBAction func signUpTapped(_ sender: UIButton) {
        cellDelegate?.signUpButton()
        
    }
}
extension UITextField{
    func addPaddingToTextField(){
        let paddingView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 8, height: 0))
        self.leftView = paddingView;
        self.leftViewMode = .always;
        self.rightView = paddingView;
        self.rightViewMode = .always;
        
    }
    
}


