//
//  UserRouter.swift
//  ViperProject
//
//  Created by Fatih Kenarda on 10.02.2025.
//

import Foundation

protocol UserRouterProtocol {
    static func createModule() -> ContentView
}

class UserRouter: UserRouterProtocol {
    static func createModule() -> ContentView {
            let presenter = UserPresenter()
            let interactor = UserInteractor()
            
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return ContentView(presenter: presenter)
        }
}

