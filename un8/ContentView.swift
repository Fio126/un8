//
//  ContentView.swift
//  un8
//
//  Created by Xichen Dong on 20/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var todoManager = TodoManager()
    
    var body: some View {
        TabView {
            MainTodoListView(todoManager: todoManager)
                .tabItem {
                    Label("Todos", systemImage:"checkmark.circle.fill")
                }
            HowManyMoreView(todoManager: todoManager)
                .tabItem {
                    Label("Number of todos", systemImage: "number.circle.fill")
                }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
