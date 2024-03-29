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
        VStack{
           // Header
            HeaderView()
            
            // Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle()  )
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                // Attempt Log In
                } label : {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        Text("Login")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
            }
            // New User?
            VStack{
                Text("New around here?")
                Button("Create An Account"){
                    //Show Registration
                }
            }
            
            Spacer()
         }
        
    }
}

#Preview {
    LoginView()
}
