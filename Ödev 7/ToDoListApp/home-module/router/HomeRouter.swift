//
//  HomeRouter.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class HomeRouter : PresenterToRouterHomeProtocol{
    
    static func createModule(ref: ViewController) {
        
        let presenter = HomePresenter()
        
        //View
        ref.presenterObject = presenter
        
        //presenter
        
        ref.presenterObject?.homeView = ref
        ref.presenterObject?.homeInteractor = HomeInteractor()
        
        //Interactor
        
        ref.presenterObject?.homeInteractor?.homePresenter = presenter
    }
}
