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
    
    static func getUser() -> User? {
        guard let userName = names.randomElement(),
              let userSurname = surnames.randomElement(),
              let userPhone = phoneNumbers.randomElement(),
              let userEmail = emails.randomElement()
        else {
            return nil
        }
        
        return User(
            name: userName,
            surname: userSurname,
            phone: userPhone,
            email: userEmail
        )
    }
}
