//
//  ProfileView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/30/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
