//
//  DetailViewController.swift
//  MarvelAPI
//
//  Created by user196036 on 5/20/21.
//

import UIKit


class DetailViewController: UIViewController {
    

  

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var texts: UITextView!
    var chars: Character?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        name.text = chars?.name
        texts.text = chars?.description
        
        
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
  
}
