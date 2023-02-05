//
//  AddTask.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import UIKit

class AddTask: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var presenterObject:AddTaskPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AddTaskRouter.createModule(ref: self)
        
    }
   
    @IBAction func buttonAdd(_ sender: Any) {
        if let tf = textField.text {
            presenterObject?.addTask(task: tf)
        }
    }
    
}
