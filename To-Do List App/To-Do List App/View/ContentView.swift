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
            ToDoListView()
        } else {
            LoginView()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
