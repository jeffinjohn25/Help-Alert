//
//  HistoryVC.swift
//  Help Alert
//
//  Created by Jeffin on 15/12/23.
//

import UIKit

class HistoryVC: UIViewController {

    @IBOutlet weak var allLabel: UILabel!
    @IBOutlet weak var allBottomView: UIView!
    @IBOutlet weak var sentLabel: UILabel!
    @IBOutlet weak var sentBottomView: UIView!
    @IBOutlet weak var receivedLabel: UILabel!
    @IBOutlet weak var receivedBottomView: UIView!
    
    
    
    var historyTableviewCell = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
        allLabel.textColor = UIColor.red
        sentLabel.textColor = UIColor.black
        receivedLabel.textColor = UIColor.black
        
        allBottomView.backgroundColor = UIColor.red
        sentBottomView.backgroundColor = UIColor.white
        receivedBottomView.backgroundColor = UIColor.white
        
    }
    
    @IBOutlet weak var tableView: UITableView!
   
    @IBAction func allTapped(_ sender: UIButton) {
        
        historyTableviewCell = 1
        tableView.reloadData()
        
        allLabel.textColor = UIColor.red
        allBottomView.backgroundColor = UIColor.red
        
        sentLabel.textColor = UIColor.black
        sentBottomView.backgroundColor = UIColor.white
        
        receivedLabel.textColor = UIColor.black
        receivedBottomView.backgroundColor = UIColor.white
    }
    
    @IBAction func sentTapped(_ sender: UIButton) {
        
        historyTableviewCell = 2
        tableView.reloadData()
        
        sentLabel.textColor = UIColor.red
        sentBottomView.backgroundColor = UIColor.red
        
        receivedLabel.textColor = UIColor.black
        receivedBottomView.backgroundColor = UIColor.white
        
        allLabel.textColor = UIColor.black
        allBottomView.backgroundColor = UIColor.white
        
    }
    @IBAction func receivedTapped(_ sender: UIButton) {
        
        historyTableviewCell = 2
        tableView.reloadData()
        
        receivedLabel.textColor = UIColor.red
        receivedBottomView.backgroundColor = UIColor.red
        
        sentLabel.textColor = UIColor.black
        sentBottomView.backgroundColor = UIColor.white
        
        allLabel.textColor = UIColor.black
        allBottomView.backgroundColor = UIColor.white
    }
}

extension HistoryVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            
            if  historyTableviewCell == 1 {
                return 1
            }
            if  historyTableviewCell == 2 {
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
            if historyTableviewCell == 1{
                let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryTCell", for: indexPath) as! HistoryTCell
                 return cell
            }
            else if historyTableviewCell == 2{
                let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryEmptyVCell", for: indexPath) as! HistoryEmptyVCell
                 return cell
            }
        default:
            break
        }
        
      return UITableViewCell()
    }
    
    
    
}
