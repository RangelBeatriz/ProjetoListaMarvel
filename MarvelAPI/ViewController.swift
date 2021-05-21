//
//  ViewController.swift
//  MarvelAPI
//
//  Created by user191918 on 5/12/21.
//

//import UIKit
//
//
//
//class ViewController: UIViewController, UITableViewDataSource {
//    
//    
//    
//    @IBOutlet weak var characterImage: UIImageView!
//    @IBOutlet weak var characterName: UILabel!
//    @IBOutlet weak var characterDescription: UILabel!
//    
//    @IBOutlet weak var tableChars: UITableView!
//    
//    
//    
//    
//    var apiMarvel = SwiftAPI()
//    var characters = [Character]()
//    
//    
//    override func viewDidLoad() {
//        tableChars.dataSource = self
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        apiMarvel.apiRequest()
//        
//        apiMarvel.completionHandler { (characters, status, message) in
//            if status {
//                guard let _characters = characters else {return}
//                self.characters = _characters
//                self.tableChars.reloadData()
//            }
//            
//        }
//        
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return characters.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
//        if cell == nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellIdentifier")
//        }
//        let chars = characters[indexPath.row].name
//        cell?.textLabel?.text = chars
//        return cell!
//    }
//    
//    
//}
//
//extension ViewController: ApiResponse {
//    func success() {
//        tableChars.reloadData()
//    }
//    
//    func error() {
//        print("Error")
//    }
//}
