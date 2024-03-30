//
//  RegisterView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/28/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewmodel = RegisterViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
                .padding(.top, 50)
                .offset(y:-30)
            
            Spacer()
            
            Form {
                TextField("Full Name", text: $viewmodel.name )
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $viewmodel.email )
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewmodel.password )
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green) {
                    // Attempt Registration
                }
            }
            .offset(y:-50)
        }
    }
}

#Preview {
    RegisterView()
}
