//
//  Detail.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 3.02.2023.
//

import UIKit

class Detail: UIViewController {

    @IBOutlet weak var textBar: UITextField!
    
    
    var toDo:ToDos?
    
    
    var presenterObject:ViewToPresenterDetailProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let t = toDo {
            textBar.text = t.task
            
        }
        
        DetailRouter.createModule(ref: self)
    }
    
    @IBAction func buttonChange(_ sender: Any) {
        
        if let tf = textBar.text, let t = toDo {
            
            presenterObject?.updateTask(task: tf,task_id: t.id!)
        }
    }
    
}
