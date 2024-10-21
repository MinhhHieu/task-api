//
//  User.swift
//  Task_API
//
//  Created by Minh Hieu on 20/10/2024.
//

import Foundation

//User Model
struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
}

// address Model
struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
}

//company Model
struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}
