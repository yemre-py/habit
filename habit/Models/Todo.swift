//
//  Todo.swift
//  habit
//
//  Created by yemre on 27.11.2024.
//
import Foundation

struct Todo : Codable, Identifiable {
    let id : UUID
    
    let userId : UUID
    let status : Status
    let priority : Priority
    
    let title : String
    let content : String
    
    let createdAt : Date
    let updatedAt : Date
    let dueDate : Date

}
