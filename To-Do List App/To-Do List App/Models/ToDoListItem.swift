//
//  ToDoListItem.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/31/24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String 
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone( state: Bool){
        isDone = state
    }
}
