//
//  ContentView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/27/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ContentViewModel()
    var body: some View {
        
        if viewmodel.isSignedIn, !viewmodel.currentUserId.isEmpty {
            // signed in
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId : viewmodel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                
            ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
