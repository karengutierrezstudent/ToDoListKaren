//
//  NewToDo.swift
//  ToDoListKaren
//
//  Created by Karen Gutierrez on 5/18/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @Binding var toDoItems: [ToDoItem]
    
    @State var title: String
    @State var isImportant: Bool
    
    @Binding var showNewTask : Bool
    
    var body: some View {
        VStack {
            Text("Add a new task")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description", text: $title)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                
                self.showNewTask = false
            }) {
                Text("Add")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(toDoItems: .constant([]), title: "", isImportant: false, showNewTask: .constant(true))
    }
}
