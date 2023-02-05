//
//  DetailProtocols.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

//VIEW - PRESENTER - INTERACTOR

protocol ViewToPresenterDetailProtocol {
    
    var DetailInteractor:PresenterToInteractorDetailProtocol? {get set}
    
    func updateTask(task:String,task_id:Int)
}

protocol PresenterToInteractorDetailProtocol {
    func updateTask(task:String,task_id:Int)
}

protocol PresenterToRouterDetailProtocol {
    static func createModule(ref:Detail)
}
