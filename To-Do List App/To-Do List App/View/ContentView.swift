//
//  ContentView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         @StateObject var viewmodel = ContentViewModel()
        if viewmodel.isSignedIn, viewmodel.currentUserId.isEmpty {
            ToDoListView()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
