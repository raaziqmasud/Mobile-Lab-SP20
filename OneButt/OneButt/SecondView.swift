//
//  SecondView.swift
//  OneButt
//
//  Created by Raaziq Brown on 2/5/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import UIKit

class SecondView: UIViewController {

    @IBAction func OnSiteButt(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://popxtwo.co/home" )! as URL, options:[:], completionHandler: nil)
        
    }
    
    
    @IBAction func ThirdPageButt(_ sender: Any) {
        self.performSegue(withIdentifier: "ThirdPageButt", sender: self)
    }
    

    @IBAction func BackButt(_ sender: Any) {
        print("back butt")
        
        self.performSegue(withIdentifier: "BackButt", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}
