//
//  UserDetailView.swift
//  Task_API
//
//  Created by Minh Hieu on 22/10/2024.
//

import SwiftUI

struct UserDetailView: View {
    let user: User

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(user.name)")
                .font(.title)
                .bold()
            Text("Email: \(user.email)")
                .font(.subheadline)
            Text("Phone: \(user.phone)")
                .font(.subheadline)
            
            Divider()
            
            Text("Address")
                .font(.headline)
            Text("Street: \(user.address.street)")
            Text("Suite: \(user.address.suite)")
            Text("City: \(user.address.city)")
            Text("Zipcode: \(user.address.zipcode)")
            
            Divider()
            
            Text("Company")
                .font(.headline)
            Text("Name: \(user.company.name)")
            Text("Catchphrase: \(user.company.catchPhrase)")
            Text("Business: \(user.company.bs)")
        }
        .padding()
        .navigationTitle("User Details")
    }
}

