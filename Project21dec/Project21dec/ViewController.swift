//
//  ViewController.swift
//  Project21dec
//
//  Created by nikita on 27.02.2023.
//

import UIKit

class ViewController: UITableViewController {
    var offDoca = [String]()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        offDoca = ["UITableViewController", "UITableViewCell", "UIButton", "UISlider", "UITabBar", "UIAlertController", "UIWebView", "MKMapView"]
        
        title = "Популярные классы официальной доки"
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offDoca.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = offDoca[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedDoca = offDoca[indexPath.row]
            vc.number = indexPath.row + 1
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

