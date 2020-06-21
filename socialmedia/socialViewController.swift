//
//  socialViewController.swift
//  socialmedia
//
//  Created by Abu Salleeiihh on 12/10/19.
//  Copyright © 2019 Abu Salleeiihh. All rights reserved.
//

import UIKit

class socialViewController: UIViewController {

    @IBOutlet var imagesite :UIImageView!
    @IBOutlet var webviwe : UIWebView!
    
    var linkString : String?
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagesite.image = self.image
        
        let url = URL(string: linkString!)
        let request = URLRequest(url: url!)
        URLSession.shared.dataTask(with: request) { (Data, URLResponse, Error) in
            if Error != nil {
                print(Error?.localizedDescription)
            }
            if Data != nil {
                
                let htmlstring = String.init(data: Data!, encoding: String.Encoding.utf8)
                
                DispatchQueue.main.async {
                self.webviwe.loadHTMLString(htmlstring!, baseURL: url)
                }
                
            }
        }.resume()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
