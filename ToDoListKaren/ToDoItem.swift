//
//  ToDoItem.swift
//  ToDoListKaren
//
//  Created by Karen Gutierrez on 5/18/23.
//

import Foundation

class ToDoItem: Identifiable {
    
    var title : String ;
    var isImportant : Bool ;
    var id = UUID()
    
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

