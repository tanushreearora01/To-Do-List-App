//
//  ToDoListItemView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/30/24.
//

import SwiftUI

struct ToDoListItemView: View {
    let item: ToDoListItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading)
            {
                Text(item.title)                    .font(.title3)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            
            Button{
                
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill": "circle")
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id : "123", title: "Get Milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
