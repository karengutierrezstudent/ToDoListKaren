//
//  ToDoItem.swift
//  ToDoListKaren
//
//  Created by Karen Gutierrez on 5/18/23.
//

import Foundation

class toDo {
    var title = "" ;
    var isImportant = true ;
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

