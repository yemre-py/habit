//
//  UserViewModel.swift
//  habit
//
//  Created by yemre on 27.11.2024.
//
import SwiftUI

class UserViewModel : ObservableObject {
    @Published var user: User?
    
    func addUser(_ newUser: User) {
        self.user = newUser
    }
}
