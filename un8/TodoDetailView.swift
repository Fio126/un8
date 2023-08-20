//
//  TodoDetailView.swift
//  un8
//
//  Created by Xichen Dong on 20/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        
        Form {
            TextField("Title", text: $todo.title)

            TextField("Subtitle", text: $todo.subtitle)
            Toggle("is complete?", isOn: $todo.isComplete)
        }
        .navigationTitle("Todo details")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            TodoDetailView(todo: .constant(Todo(title:"Some Title")))
        }
    }
}
