//
//  NotificationVC.swift
//  Help Alert
//
//  Created by Jeffin on 10/01/24.
//

import UIKit

class NotificationVC: UIViewController {

    @IBOutlet weak var notificationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        notificationTableView.dataSource = self
        notificationTableView.delegate = self
    }
    


}

extension NotificationVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationVCell") as! NotificationVCell
        return cell
    }
    
    
}
