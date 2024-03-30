//
//  User.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/30/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval 
}
