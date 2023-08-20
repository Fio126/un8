//
//  TodoRowView.swift
//  un8
//
//  Created by Xichen Dong on 20/08/2023.
//

import SwiftUI

struct todoRowView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        NavigationLink{
            TodoDetailView(todo: $todo)
            
        } label: {
            HStack {
                Image(systemName: todo.isComplete ? "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        todo.isComplete.toggle()
                    }
                VStack (alignment: .leading){
                    Text(todo.title)
                        .strikethrough(todo.isComplete)
                    
                    if !todo.subtitle.isEmpty {
                        Text(todo.subtitle)
                            .font(.footnote)
                            .foregroundColor(.gray)
                            .strikethrough(todo.isComplete)
                    }
                }
            }
            
        }
    }
}

struct todoRowView_Previews: PreviewProvider {
    static var previews: some View {
        todoRowView(todo: .constant(Todo(title: "Demo todo")))
    }
}
