//
//  AddTaskRouter.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class AddTaskRouter : PresenterToRouterAddTaskProtocol{
    
    static func createModule(ref: AddTask) {
        ref.presenterObject = AddTaskPresenter()
        ref.presenterObject?.AddTaskInteractor = AddTaskInteractor()
    }
}
