//
//  Users.swift
//  ContactList
//
//  Created by Aleksey Konchyts on 27.02.24.
//

import Foundation

struct User {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    static func getUsers() -> [User]? {
        var users: [User] = []
        
        for _ in 1...names.count {
            guard let userName = names.randomElement(),
                  let userSurname = surnames.randomElement(),
                  let userPhone = phoneNumbers.randomElement(),
                  let userEmail = emails.randomElement()
            else {
                return nil
            }

            let user = User(
                name: userName,
                surname: userSurname,
                phone: userPhone,
                email: userEmail
            )
            
            users.append(user)
            
            names.removeAll { $0 == userName }
            surnames.removeAll { $0 == userSurname }
            phoneNumbers.removeAll { $0 == userPhone }
            emails.removeAll { $0 == userEmail }
        }
        return users
    }
}
