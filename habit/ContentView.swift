//
//  ContentView.swift
//  habit
//
//  Created by yemre on 27.11.2024.
//

import SwiftUI
struct ContentView: View {
    @ObservedObject var viewModel = UserViewModel()
    
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showUserDetails = false
    
    
    var body: some View {
            VStack {
                if showUserDetails, let user = viewModel.user {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Username: \(user.username)")
                            .font(.headline)
                        Text("Email: \(user.email)")
                            .font(.subheadline)
                        Text("Account Created: \(user.createdAt, formatter: dateFormatter)")
                            .font(.caption)
                    }
                } else {
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Button("Create User") {
                        viewModel.addUser(User(id: UUID(), username: username, email: email, password: password, createdAt: Date(), Todo: []))
                        showUserDetails = true
                    }
                    .padding()
                }
            }
            .padding()
        }
}

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    formatter.timeStyle = .none
    return formatter
}()
#Preview {
    ContentView()
}
