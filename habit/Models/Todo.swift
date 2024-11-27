//
//  Todo.swift
//  habit
//
//  Created by yemre on 27.11.2024.
//

struct Todo : Codable, Identifiable {
    let id : UUID
    
    let userId : Int
    let status : Status
    let PrioriTY : Priority
    
    let title : String
    let content : String
    
    let createdAt : Date
    let updatedAt : Date
    let dueDate : Date

}
