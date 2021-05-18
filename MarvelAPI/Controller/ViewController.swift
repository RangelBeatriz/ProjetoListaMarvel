//
//  ViewController.swift
//  MarvelAPI
//
//  Created by user191918 on 5/12/21.
//

import UIKit
import CryptoKit
import Alamofire


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var chamarApi = SwiftAPI()
    var listaChars = [Personagem]()
    var hero: Personagem?

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var lblTwo: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chamarApi.marvelApiCall()
        
        /*nameLbl.text = hero?.name
        lblTwo.text = hero?.description*/

        tableView.delegate = self
        tableView.dataSource = self
        
        
        
    }
    
    
    //MARK: - Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaChars.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = listaChars[indexPath.row].name
        return cell
    }
    
    //MARK: - Segway
    /*func tableView(_ tablewView: UITableView, didSelectRowat indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination =
    }*/

}


