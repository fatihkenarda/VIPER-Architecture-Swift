//
//  ContentView.swift
//  ViperProject
//
//  Created by Fatih Kenarda on 10.02.2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var presenter: UserPresenter

        var body: some View {
            NavigationView {
                List(presenter.users) { user in
                    Text(user.name)
                }
                .navigationTitle("Kullanıcı Listesi")
                .onAppear {
                    presenter.loadUsers()
                }
            }
        }
}

#Preview {
    UserRouter.createModule()
               .previewDisplayName("VIPER Kullanıcı Listesi")
}
