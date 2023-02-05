//
//  AddTastInteractor.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class AddTaskInteractor : PresenterToInteractorAddTaskProtocol {
    
    let db:FMDatabase?
    
    init(){
        
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let databaseURL = URL(fileURLWithPath: targetPath).appendingPathComponent("rehber.sqlite")
        
        db = FMDatabase(path: databaseURL.path)
    }
    
    func addTask(task: String) {
        
        db?.open()
        
        do {
            
            try db?.executeUpdate("INSERT INTO todos (todo_task) VALUES (?)", values: [task])
            
        }catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
