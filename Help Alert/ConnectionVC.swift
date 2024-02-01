//
//  ConnectionVC.swift
//  Help Alert
//
//  Created by Jeffin on 11/12/23.
//

import UIKit

class ConnectionVC: UIViewController {
    
    var tableViewCell : Int = 1
    
    
    var initialNames = ["SP","CP","SR","SA","TA","AK"]
    var names = ["Suhail P S","Calton Paiva","Shijon Roy","Sayed Afthab","Thomas Alex","Ananadha Krishna"]
    var emails = ["SuhailPS@gmail.com","CaltonPaiva@gmail.com","ShijonRoy@gmail.com","SayedAfthab@gmail.com","ThomasAlex@gmail.com","AnanadhaKrishna@gmail.com"]
    
    @IBOutlet weak var myHelpersBottomView: UIView!
    @IBOutlet weak var myHelpersLabel: UILabel!
    @IBOutlet weak var iWantToHelpBottomView: UIView!
    @IBOutlet weak var iWantToHelpLabel: UILabel!
    @IBOutlet weak var requestsBottomView: UIView!
    @IBOutlet weak var requestsLabel: UILabel!
    
    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.delegate = self
        
        myHelpersLabel.textColor = UIColor.red
        iWantToHelpLabel.textColor = UIColor.black
        requestsLabel.textColor = UIColor.black
        
        myHelpersBottomView.backgroundColor = UIColor.red
        iWantToHelpBottomView.backgroundColor = UIColor.white
        requestsBottomView.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myHelpersTapped(_ sender: UIButton) {
        
        tableViewCell = 1
        
        TableView.reloadData()
       
        myHelpersLabel.textColor = UIColor.red
        myHelpersBottomView.backgroundColor = UIColor.red
        
        iWantToHelpLabel.textColor = UIColor.black
        iWantToHelpBottomView.backgroundColor = UIColor.white
        
        requestsLabel.textColor = UIColor.black
        requestsBottomView.backgroundColor = UIColor.white
    }
    
    @IBAction func iWantToHelpTapped(_ sender: UIButton) {
        
        tableViewCell = 2
        
        TableView.reloadData()
        
        iWantToHelpLabel.textColor = UIColor.red
        iWantToHelpBottomView.backgroundColor = UIColor.red
        
        requestsLabel.textColor = UIColor.black
        requestsBottomView.backgroundColor = UIColor.white
        
        myHelpersLabel.textColor = UIColor.black
        myHelpersBottomView.backgroundColor = UIColor.white
        
    }
    
    @IBAction func Requets(_ sender: UIButton) {
        
        tableViewCell = 3
        
        TableView.reloadData()
        
        requestsLabel.textColor = UIColor.red
        requestsBottomView.backgroundColor = UIColor.red
        
        iWantToHelpLabel.textColor = UIColor.black
        iWantToHelpBottomView.backgroundColor = UIColor.white
        
        myHelpersLabel.textColor = UIColor.black
        myHelpersBottomView.backgroundColor = UIColor.white
        
    }
    
    
    
}
   
extension ConnectionVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            
            if tableViewCell == 1 {
                return 1
            }
            if tableViewCell == 2 {
                return 1
            }
            return 0
        case 1:
            if tableViewCell == 1 {
                return names.count
            }
            if tableViewCell == 2 {
             return 3
            }
            if tableViewCell == 3{
                return 1
            }
       
            return 0
            
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            if tableViewCell == 1 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "AddHelperVCell", for: indexPath) as! AddHelperVCell
                    return cell
            }
           else if tableViewCell == 2 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "AddAlerterVCell", for: indexPath) as! AddAlerterVCell
                    return cell
            }
        case 1:
            
            if tableViewCell == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "HelpListVCell", for: indexPath) as! HelpListVCell
                cell.nameLabel.text = names[indexPath.row]
                cell.emailLabel.text = emails[indexPath.row]
                cell.nameInitialLabel.text = initialNames[indexPath.row]
                return cell
            } else if tableViewCell == 2{
                let cell = tableView.dequeueReusableCell(withIdentifier: "HelpListVCell", for: indexPath) as! HelpListVCell
                return cell
            } else if tableViewCell == 3{
                let cell = tableView.dequeueReusableCell(withIdentifier: "RequestVCell", for: indexPath) as! RequestVCell
                return cell
                
            }
     
        default:
            break
        }
        return UITableViewCell()
      
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
    
    





