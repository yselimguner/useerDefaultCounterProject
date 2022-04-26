//
//  ViewController.swift
//  UserDefaultCounterProject
//
//  Created by Yavuz Güner on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let o = UserDefaults.standard
        
        var counter = o.integer(forKey: "counter")
        
        counter = counter + 1
        o.set(counter, forKey: "counter")
        
        counterLabel.textß = "Counter: \(counter)"
    }


}

