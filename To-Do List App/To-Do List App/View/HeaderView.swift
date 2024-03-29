//
//  HeaderView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/28/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            VStack{
                Text("To Do List")
                    .foregroundColor((Color.white))
                    .bold()
                    .font(.system(size: 50))
                
                Text("Get Things done")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
