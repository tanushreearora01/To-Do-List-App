//
//  TLButton.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/30/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action :() -> Void
    
    var body: some View {
        Button {
        // Action
            action()
        } label : {
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.blue)
                Text("Login")
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .blue){
        
    }
}
