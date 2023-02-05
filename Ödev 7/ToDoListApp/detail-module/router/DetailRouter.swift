//
//  DetailRouter.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 4.02.2023.
//

import Foundation

class DetailRouter : PresenterToRouterDetailProtocol{
    
    static func createModule(ref: Detail) {
        
        ref.presenterObject = DetailPresenter()
        ref.presenterObject?.DetailInteractor = DetailInteractor()
    }
}
