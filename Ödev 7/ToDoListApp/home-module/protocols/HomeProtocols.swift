//
//  HomeProtocols.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

//VIEW - PRESENTER - INTERACTOR

//Ana protocoller
protocol ViewToPresenterHomeProtocol {
    
    var homeInteractor: PresenterToInteractorHomeProtocol? {get set}
    var homeView: PresenterToViewHomeProtocol? {get set}
    
    func uploadTasks()
    func search(searchText:String)
    func deleteTask(task_id:Int)
    func isDone(task_id:Int,check:Bool)
}

protocol PresenterToInteractorHomeProtocol {
    
    var homePresenter:InteractorToPresenterHomeProtocol? {get set}
    
    func uploadTasks()
    func search(searchText:String)
    func deleteTask(task_id:Int)
    func isDone(task_id:Int,check:Bool)
}

//Taşıyıcı Protocoller
protocol InteractorToPresenterHomeProtocol {
    
    func sendTasksToPresenter(ToDosList:[ToDos])
}

protocol PresenterToViewHomeProtocol {
    
    func sendTasksToView(ToDosList:[ToDos])
}

//Router Protocol

protocol PresenterToRouterHomeProtocol {
    
    static func createModule(ref: ViewController)
}
