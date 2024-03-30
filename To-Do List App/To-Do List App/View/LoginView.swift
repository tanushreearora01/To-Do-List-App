//
//  LoginView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/28/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
               // Header
                HeaderView(title: "To Do List", subtitle : "Get Things done", angle: 15, background: .pink)
                
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
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
