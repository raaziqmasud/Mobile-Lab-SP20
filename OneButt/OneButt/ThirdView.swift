//
//  ThirdView.swift
//  OneButt
//
//  Created by Raaziq Brown on 2/5/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import UIKit

class ThirdView: UIViewController {


    @IBAction func BackToHome(_ sender: Any) {
        self.performSegue(withIdentifier: "BackToHome", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func OnChannelButt(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.youtube.com/channel/UC88Jcu-nXlB5SetBVELH2MA/playlists" )! as URL, options:[:], completionHandler: nil)
        
    }
    
}
