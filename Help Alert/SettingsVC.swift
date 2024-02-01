//
//  SettingsVC.swift
//  Help Alert
//
//  Created by Jeffin on 11/01/24.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet weak var settingsTableView: UITableView!
    
    var settingsTable = 1
    
    var items = ["Privacy Policy","Terms & Conditions","Clear History","Clear Notifications","Delete Account","Logout"]
    
    var images = [UIImage(named: "PrivacyPolicyImage"),
                  UIImage(named: "TermsAndConditionsImage"),
                  UIImage(systemName: "newspaper"),
                  UIImage(systemName: "bell"),
                  UIImage(systemName: "trash"),
                  UIImage(named: "LogoutImage")]

    override func viewDidLoad() {
        super.viewDidLoad()

        settingsTableView.delegate = self
        settingsTableView.dataSource = self
        
       
        
    }
    
}
extension SettingsVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return items.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsVCell") as! SettingsVCell
                return cell
        case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsListVCell") as! SettingsListVCell
            cell.listNameLabel.text = items[indexPath.row]
            cell.listImage.image = images[indexPath.row]
            switch indexPath.row % 5 {
            case 0:
                   cell.listNameLabel.textColor = .black
            case 1:
                   cell.listNameLabel.textColor = .black
            case 2:
                   cell.listNameLabel.textColor = .red
                   cell.listImage.tintColor = .red
            case 3:
                   cell.listNameLabel.textColor = .red
                   cell.listImage.tintColor = .red
            case 4:
                   cell.listNameLabel.textColor = .red
                   cell.listImage.tintColor = .red
            case 5:
                   cell.listNameLabel.textColor = .black
            default:
                break
            }
                return cell
            
        default:
            break
        }
   return UITableViewCell()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
 
}

