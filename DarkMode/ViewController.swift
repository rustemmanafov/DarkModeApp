//
//  ViewController.swift
//  DarkMode
//
//  Created by Rustem Manafov on 28.08.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var swichOutlet: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var cars = ["BMW", "Mercedes", "Porsche", "Ford", "Audi", "Toyota", "Seat", "Volkswagen", "Lada", "Bentley", "Lexus", "Kia", "Hyundai"]

    @IBAction func darkModeAct(_ sender: Any) {
        if #available(iOS 13.0, *) {
//            UIApplication.shared.windows.forEach { window in
//            }
            let appDelegate = UIApplication.shared.windows.first
            if (sender as AnyObject).isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
                return
            }
            appDelegate?.overrideUserInterfaceStyle = .light
            return
        } else {
            //Put another code
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row]
        return cell
    }
}
