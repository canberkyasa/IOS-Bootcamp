//
//  ViewController.swift
//  Odev 4
//
//  Created by Canberk Yaşa on 17.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonGitX(_ sender: Any) {
        
        performSegue(withIdentifier: "sayfaXgecis", sender: nil)
    }
}

