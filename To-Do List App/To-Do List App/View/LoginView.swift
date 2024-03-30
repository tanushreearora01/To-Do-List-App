//
//  LoginView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/28/24.
//

import SwiftUI

struct LoginView: View {
   
    @StateObject var viewmodel = LoginViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
               // Header
                HeaderView(title: "To Do List", subtitle : "Get Things done", angle: 15, background: .pink)
                    .padding(.top, 50)
                
                // Login Form
                Form {
                    TextField("Email Address", text: $viewmodel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewmodel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue) {
                        // Attempt log in
                    }
                }
                // New User?
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                
                Spacer()
             }
        }
        
    }
}

#Preview {
    LoginView()
}
