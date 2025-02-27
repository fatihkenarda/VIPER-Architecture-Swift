//
//  UserInteractor.swift
//  ViperProject
//
//  Created by Fatih Kenarda on 10.02.2025.
//

import Foundation

protocol UserInteractorProtocol {
    func fetchUsers()
}

class UserInteractor: UserInteractorProtocol {
    var presenter: (any UserPresenterProtocol)?

        func fetchUsers() {
            // Normalde buraya bir API çağrısı gelebilir
            let users = [
                User(name: "Ahmet"),
                User(name: "Mehmet"),
                User(name: "Zeynep")
            ]
            presenter?.usersFetched(users)
        }
}
