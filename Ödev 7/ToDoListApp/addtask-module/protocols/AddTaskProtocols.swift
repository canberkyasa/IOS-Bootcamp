//
//  AddTaskProtocols.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

// VIEW - PRESENTER - INTERACTOR

protocol ViewToPresenterAddTaskProtocol {
    
    var AddTaskInteractor:PresenterToInteractorAddTaskProtocol? {get set}
    
    func addTask(task:String)
}

protocol PresenterToInteractorAddTaskProtocol {
    
    func addTask(task:String)
}

protocol PresenterToRouterAddTaskProtocol {
    
    static func createModule(ref:AddTask)
}
