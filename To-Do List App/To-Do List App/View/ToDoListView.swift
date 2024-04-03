//
//  ToDoListView.swift
//  To-Do List App
//
//  Created by Tanushree Arora on 3/30/24.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    private let userId : String
    
    init(userId : String){
        self.userId = userId
        self._items = FirestoreQuery(
        collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView{
            VStack (alignment: .leading) {
                List(items) {
                    item in ToDoListItemView (item: item)
                        .swipeActions{
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }
                        }
                }.listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                    
                }
            }.sheet(isPresented: $viewModel.showingNewItemView)   {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
        
    }
}
#Preview {
    ToDoListView(userId: "yhU9vGZboNdkY7p91vI1rnrmJ673")
}
