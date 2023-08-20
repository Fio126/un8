//
//  NewTodoView.swift
//  un8
//
//  Created by Xichen Dong on 20/08/2023.
//

import SwiftUI

struct newTodoView: View {
    
    @State private var title = ""
    @State private var subtitle = ""
    @Binding var sourceArray: [Todo]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section {
                
            
            TextField("Title", text: $title)
            TextField("Subtitle", text: $subtitle)
          }
            
            Section {
                Button ("Save") {
                    let todo = Todo(title: title, subtitle: subtitle)
                    sourceArray.append(todo)
                    dismiss()
                }
                Button ("Cancel", role: .destructive) {
                    dismiss()
                }
            }
        }
    }
}

struct newTodoView_Previews: PreviewProvider {
    static var previews: some View {
        newTodoView(sourceArray: .constant([]))
    }
}
