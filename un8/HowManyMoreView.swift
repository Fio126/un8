//
//  HowManyMoreView.swift
//  un8
//
//  Created by Xichen Dong on 20/08/2023.
//

import SwiftUI

struct HowManyMoreView: View {
    
    @ObservedObject var todoManager: TodoManager
    
    var body: some View {
        
        VStack{
            Text("You have done \(todoManager.numTodosDone) todos! ")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text("You have \(todoManager.numTodosNotDone) left.")
                .padding()
        }
    }
}

struct HowManyMoreView_Previews: PreviewProvider {
    static var previews: some View {
        HowManyMoreView(todoManager: TodoManager())
    }
}
