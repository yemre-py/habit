//
//  User.swift
//  habit
//
//  Created by yemre on 27.11.2024.
//
import Foundation

struct User : Codable, Identifiable {
    let id : UUID
    let username : String
    let email : String
    let password : String
    let createdAt : Date
    let Todo : [Todo]
}
