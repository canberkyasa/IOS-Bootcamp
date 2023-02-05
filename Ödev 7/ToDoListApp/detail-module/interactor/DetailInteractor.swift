//
//  DetailInteractor.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class DetailInteractor: PresenterToInteractorDetailProtocol {
    
    let db:FMDatabase?
    
    init(){
        
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let databaseURL = URL(fileURLWithPath: targetPath).appendingPathComponent("rehber.sqlite")
        
        db = FMDatabase(path: databaseURL.path)
    }
    
    func updateTask(task: String,task_id:Int) {
        
        db?.open()
        
        do {
            
            try db?.executeUpdate("UPDATE todos SET todo_task = ? WHERE todo_id = ?", values: [task,task_id])
            
        }catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
