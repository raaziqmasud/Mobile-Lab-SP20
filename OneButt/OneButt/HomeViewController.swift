//
//  ViewController.swift
//  OneButt
//
//  Created by Raaziq Brown on 2/5/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController {


    
    
    @IBAction func Butt(_ sender: Any) {
        print("butttt")
        
        self.performSegue(withIdentifier: "Butt", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//         self.view = textView
//        
        print("view loaded")
       
        view.backgroundColor = .black
       
        

        
            }
        }
   
    




