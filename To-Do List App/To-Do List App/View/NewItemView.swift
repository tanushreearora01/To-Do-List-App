//
//  NewItemView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/30/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form {
                // Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                TLButton(title: "Save", background: .pink) {
                    if   viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    }
                    else {
                        viewModel.showAlert = true
                    }
                }
                .alert(isPresented: $viewModel.showAlert)  {
                    Alert(title: Text("Error"), message: Text("Please fill in all the fields and select due date"))
                }
            }
        }
        
    }
}

#Preview {
    NewItemView(newItemPresented:  Binding (get: {
        return true
    }, set: {
        _ in
    }))
}
