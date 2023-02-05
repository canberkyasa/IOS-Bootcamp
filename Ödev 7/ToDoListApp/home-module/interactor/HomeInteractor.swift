//
//  HomeInteractor.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class HomeInteractor : PresenterToInteractorHomeProtocol {
    
    var homePresenter: InteractorToPresenterHomeProtocol?
    
    let db:FMDatabase?
    
    init(){
        
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let databaseURL = URL(fileURLWithPath: targetPath).appendingPathComponent("rehber.sqlite")
        
        db = FMDatabase(path: databaseURL.path)
    }
    
    func uploadTasks() {
        var toDosList = [ToDos]()
        
        db?.open()
        
        do {
            
            let rs = try db!.executeQuery("SELECT * FROM todos", values: nil)
            
            while rs.next() {
                
                let task_id = Int(rs.string(forColumn: "todo_id"))!
                let task = rs.string(forColumn: "todo_task")!
                
                let todo = ToDos(id: task_id, task: task)
                toDosList.append(todo)
            }
            
            homePresenter?.sendTasksToPresenter(ToDosList: toDosList)
            
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
        
        
        
    }
    func search(searchText: String) {
        
        var toDosList = [ToDos]()
        
        db?.open()
        
        do {
            
            let rs = try db!.executeQuery("SELECT * FROM todos WHERE todo_task like ?", values: ["%\(searchText)%"])
            
            while rs.next() {
                
                let task_id = Int(rs.string(forColumn: "todo_id"))!
                let task = rs.string(forColumn: "todo_task")!
                
                let todo = ToDos(id: task_id, task: task)
                toDosList.append(todo)
            }
            
            homePresenter?.sendTasksToPresenter(ToDosList: toDosList)
            
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    func deleteTask(task_id: Int) {
        
        db?.open()
        
        do {
            
            try db?.executeUpdate("DELETE FROM todos WHERE todo_id = ?", values: [task_id])
            uploadTasks()
            
        }catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    func isDone(task_id:Int,check: Bool) {
        print("Görev : \(task_id) - \(String(check))")
    }
}
