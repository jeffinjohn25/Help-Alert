//
//  SecondVC.swift
//  Help Alert
//
//  Created by Jeffin on 11/12/23.
//

import UIKit

class DashboardVC: UIViewController {

    @IBOutlet weak var initailUIview: UIView!
    @IBOutlet weak var redCircleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        initailUIview.layer.cornerRadius = 20
        redCircleView.layer.cornerRadius = 125
    }
    

    @IBAction func connectionButtonPressed(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ConnectionVC") as? ConnectionVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func historyButtonPressed(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HistoryVC") as? HistoryVC
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    @IBAction func notificationBttonPressed(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "NotificationVC") as? NotificationVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func settingButtonPressed(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SettingsVC") as? SettingsVC
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
}
