//
//  DetailPresenter.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class DetailPresenter: ViewToPresenterDetailProtocol {
    
    var DetailInteractor: PresenterToInteractorDetailProtocol?
    
    func updateTask(task: String,task_id:Int) {
        DetailInteractor?.updateTask(task: task,task_id: task_id)
    }
}
