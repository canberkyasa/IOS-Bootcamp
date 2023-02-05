//
//  AddTaskPresenter.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class AddTaskPresenter : ViewToPresenterAddTaskProtocol {
    
    var AddTaskInteractor: PresenterToInteractorAddTaskProtocol?
    
    func addTask(task: String) {
        
        AddTaskInteractor?.addTask(task: task)
    }
}
