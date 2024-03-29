//
//  To_Do_List_AppApp.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/27/24.
//

import SwiftUI
import FirebaseCore

@main
struct To_Do_List_AppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
