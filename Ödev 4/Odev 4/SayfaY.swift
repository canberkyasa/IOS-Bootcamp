//
//  SayfaY.swift
//  Odev 4
//
//  Created by Canberk Yaşa on 17.01.2023.
//

import UIKit

class SayfaY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonBasaDon(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
