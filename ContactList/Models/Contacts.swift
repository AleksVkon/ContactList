//
//  Users.swift
//  ContactList
//
//  Created by Aleksey Konchyts on 27.02.24.
//

import Foundation

struct Contact {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        for _ in 1...names.count {
            guard let userName = names.randomElement(),
                  let userSurname = surnames.randomElement(),
                  let userPhone = phoneNumbers.randomElement(),
                  let userEmail = emails.randomElement()
            else {
                return contacts
            }

            let contact = Contact(
                name: userName,
                surname: userSurname,
                phone: userPhone,
                email: userEmail
            )
            
            contacts.append(contact)
            
            names.removeAll { $0 == userName }
            surnames.removeAll { $0 == userSurname }
            phoneNumbers.removeAll { $0 == userPhone }
            emails.removeAll { $0 == userEmail }
        }
        return contacts
    }
}
