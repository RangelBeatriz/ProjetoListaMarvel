//
//  ViewController.swift
//  MarvelAPI
//
//  Created by user191918 on 5/12/21.
//

import UIKit
import CryptoKit



class ViewController: UIViewController {
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterDescription: UILabel!
    
    
    
    var apiMarvel = SwiftAPI()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apiMarvel.apiRequest()
    }


}

