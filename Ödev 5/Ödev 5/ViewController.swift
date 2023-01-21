//
//  ViewController.swift
//  Ödev 5
//
//  Created by Canberk Yaşa on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelSonuc: UILabel!
    
    var toplam:Int = 0
    var bool:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func numaraYazdir(numara:String) {
        
        if labelSonuc.text == "0" {
            labelSonuc.text = numara
        } else {
            labelSonuc.text?.append(numara)
        }
    }
    
    
    @IBAction func button1(_ sender: Any) {
        
        numaraYazdir(numara: "1")
    }
    
    @IBAction func button2(_ sender: Any) {
        
        numaraYazdir(numara: "2")
    }
    
    @IBAction func button3(_ sender: Any) {
        
        numaraYazdir(numara: "3")
    }
    
    @IBAction func button4(_ sender: Any) {
        
        numaraYazdir(numara: "4")
    }
    
    @IBAction func button5(_ sender: Any) {
        
        numaraYazdir(numara: "5")
    }
    
    @IBAction func button6(_ sender: Any) {
        
        numaraYazdir(numara: "6")
    }
    
    @IBAction func button7(_ sender: Any) {
        
        numaraYazdir(numara: "7")
    }
    
    @IBAction func button8(_ sender: Any) {
        
        numaraYazdir(numara: "8")
    }
    
    @IBAction func button9(_ sender: Any) {
        
        numaraYazdir(numara: "9")
    }
    
    @IBAction func button0(_ sender: Any) {
        
        numaraYazdir(numara: "0")
    }
    
    @IBAction func buttonSil(_ sender: Any) {
        
        labelSonuc.text = "0"
        toplam = 0
        bool = false
    }
    
    @IBAction func buttonTopla(_ sender: Any) {
        
        if bool == false {
            
            toplam += Int(labelSonuc.text!) ?? 0
            
            labelSonuc.text = "0"
            print(toplam)
            
        } else {
            
            labelSonuc.text = "0"
            
            bool = false
            
            print(toplam)
            
        }


    }
    
    @IBAction func buttonSonuc(_ sender: Any) {
        
        toplam += Int(labelSonuc.text!) ?? 0
        labelSonuc.text = String(toplam)
        
        bool = true
    }
    
}
