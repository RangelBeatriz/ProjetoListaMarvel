//
//  TableViewController.swift
//  MarvelAPI
//
//  Created by user192921 on 5/19/21.
//

import UIKit
import CryptoKit


class ViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var charView: UITableView!
    var characs = [Character]()
    var apiMarvel = SwiftAPI()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        charView.delegate = self
        charView.dataSource = self
        
        
        
        apiMarvel.apiRequest()
        apiMarvel.completionHandler { (characters, status, message) in
            if status{
                guard let _characters = characters else {return}
                self.characs = _characters
                self.charView.reloadData()
                
            }
        }
    }
    
    
}
    extension ViewController : UITableViewDataSource {
        
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characs.count
}
                
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        }
        let charac = characs[indexPath.row]
        cell?.textLabel?.text = charac.name
        return cell!
    }
        func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) { performSegue(withIdentifier: "showDetails", sender: self)
            
        }
       
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? DetailViewController { destination.chars = characs[charView.indexPathForSelectedRow!.row]
        }
        

        }
        

    }
