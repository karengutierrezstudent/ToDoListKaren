//
//  ContentView.swift
//  ToDoListKaren
//
//  Created by Karen Gutierrez on 5/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                Button(action:  {
                    self.showNewTask = true
                }) {
                Text("+")
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                    
                            }
            }
            .listStyle(.plain)
        }
        if showNewTask {
            NewToDoView(toDoItems: $toDoItems
                    , title: "", isImportant: false, showNewTask: $showNewTask)
                }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
