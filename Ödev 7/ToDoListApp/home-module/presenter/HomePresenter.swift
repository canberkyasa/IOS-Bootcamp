//
//  HomePresenter.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class HomePresenter : ViewToPresenterHomeProtocol {
    
    var homeView: PresenterToViewHomeProtocol?
    var homeInteractor: PresenterToInteractorHomeProtocol?
    
    func uploadTasks() {
        homeInteractor?.uploadTasks()
    }
    func deleteTask(task_id: Int) {
        homeInteractor?.deleteTask(task_id: task_id)
    }
    func search(searchText: String) {
        homeInteractor?.search(searchText: searchText)
    }
    func isDone(task_id: Int,check: Bool) {
        homeInteractor?.isDone(task_id: task_id, check: check)
    }
}

extension HomePresenter : InteractorToPresenterHomeProtocol {
    
    func sendTasksToPresenter(ToDosList: [ToDos]) {
        
        homeView?.sendTasksToView(ToDosList: ToDosList)
    }
}
