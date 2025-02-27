//
//  UserPresenter.swift
//  ViperProject
//
//  Created by Fatih Kenarda on 10.02.2025.
//

import Foundation

protocol UserPresenterProtocol: ObservableObject {
    var users: [User] { get set }
       func usersFetched(_ users: [User])
       func loadUsers()
}

class UserPresenter: UserPresenterProtocol {
    @Published var users: [User] = []
        var interactor: UserInteractorProtocol?

        func loadUsers() {
            interactor?.fetchUsers()   //Veriyi Interactor'dan iste
        }

        func usersFetched(_ users: [User]) {
            DispatchQueue.main.async {
                self.users = users   // View’a göstermek için veriyi güncelle
            }
        }
}
