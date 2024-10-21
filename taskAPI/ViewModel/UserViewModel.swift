//
//  UserViewModel.swift
//  Task_API
//
//  Created by Minh Hieu on 20/10/2024.
//

import Foundation

@MainActor
class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var selectedUser: User?

    func fetchUsers() async {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            print("Invalid URL")
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedUsers = try JSONDecoder().decode([User].self, from: data)
            users = decodedUsers
        } catch {
            print("Failed to fetch users: \(error.localizedDescription)")
        }
    }
    
    func selectUser(user: User) {
        selectedUser = user
    }
}


