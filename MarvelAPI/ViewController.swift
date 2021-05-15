//
//  ViewController.swift
//  MarvelAPI
//
//  Created by user191918 on 5/12/21.
//

import UIKit
import CryptoKit



class ViewController: UIViewController {
    



    override func viewDidLoad() {
        let apiMarvel = SwiftAPI()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apiMarvel.apiRequest()
    }


}

