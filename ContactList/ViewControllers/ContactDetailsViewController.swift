//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Aleksey Konchyts on 28.02.24.
//

import UIKit

final class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(contact.name) \(contact.surname)"
        
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
        
    }
}
