//
//  TodoItemRow.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import SwiftUI

struct TodoItemRow: View {
    
    var item: Todo
    @State var active = false
    
    var body: some View {
       
        VStack{
            Text("\(item.name)")
            Text("\(item.description)")
        }
        
    }
    
    func clicked() {
        active = true
       }
}

struct TodoItemRow_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemRow(item: Todo(name: "Mi Todo", description: "Mi Descripción"))
    }
}
