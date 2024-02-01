//
//  ForgotPasswordVC.swift
//  Help Alert
//
//  Created by Jeffin on 05/01/24.
//

import UIKit

class ForgotPasswordVC: UIViewController {

 
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
  

        self.tableView.dataSource = self
        self.tableView.delegate = self
      
    }

}
extension ForgotPasswordVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ForgotPasswordTCell") as! ForgotPasswordTCell
        cell.selectionStyle = .none
        return cell
    }
    
    
}
