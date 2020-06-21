//
//  ViewController.swift
//  socialmedia
//
//  Created by Abu Salleeiihh on 12/10/19.
//  Copyright © 2019 Abu Salleeiihh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destnatin = segue.destination as! socialViewController
        let button = sender as! UIButton
        
        switch segue.identifier {
        case "f":
            destnatin.linkString = "https://m.facebook.com"
            destnatin.image = button.imageView?.image
        case "t":
            destnatin.linkString = "https://www.twitter.com"
            destnatin.image = button.imageView?.image
        case "i":
            destnatin.linkString = "https://www.instagram.com"
            destnatin.image = button.imageView?.image
        
        default:
            destnatin.linkString = "https://www.youtube.com"
            destnatin.image = button.imageView?.image
        }
    }


}

