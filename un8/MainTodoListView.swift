//
//  MainTodoListView.swift
//  un8
//
//  Created by Xichen Dong on 20/08/2023.
//

import SwiftUI

struct MainTodoListView: View {
    
    @ObservedObject var todoManager: TodoManager
    @State private var showSheet = false
    @State private var showConfirmAlert = false
    
    var body: some View {
        
        NavigationStack {
            List($todoManager.todos, editActions: [.all]) { $todo in
                todoRowView(todo: $todo)
            }
            .navigationTitle("Todo")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    #if DEBUG
                    Button {
                        showConfirmAlert = true
                    } label: {
                        Image(systemName: "clipboard.")
                    }
                    #endif
                    
                    Button{
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showSheet){
                newTodoView(sourceArray: $todoManager.todos)
                    .presentationDetents([.medium])
            }
            .alert("Load sample data? Warning: All exisiting data will be deleted.", isPresented: $showConfirmAlert) {
                Button("Replace", role: .destructive) {
                    todoManager.loadSampleData()
                }
            }
        }
    }
}

struct MainTodoListView_Previews: PreviewProvider {
    static var previews: some View {
        MainTodoListView(todoManager: TodoManager())
    }
}
