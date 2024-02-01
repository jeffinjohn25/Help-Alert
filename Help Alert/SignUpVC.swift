//
//  SignUpVC.swift
//  Help Alert
//
//  Created by Jeffin on 07/01/24.
//

import UIKit

class SignUpVC: UIViewController {

    
    @IBOutlet weak var sighnUpTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sighnUpTable.delegate = self
        sighnUpTable.dataSource = self
        navigationItem.hidesBackButton = true
        
        
    }

  
}
extension SignUpVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sighnUpTable.dequeueReusableCell(withIdentifier: "SignUpTCell") as! SignUpTCell
        cell.SignUpCellDelegate = self
        cell.selectionStyle = .none
        return cell
    }
    
    
}

extension SignUpVC: SignUpProtocol{
    func logInButton() {
        _ = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        self.navigationController?.popToRootViewController(animated: true)

    }
    
}
