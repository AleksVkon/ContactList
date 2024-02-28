//
//  ViewController.swift
//  ContactList
//
//  Created by Aleksey Konchyts on 27.02.24.
//

import UIKit

final class ContactViewController: UITableViewController {
    
    private let contactList = Contact.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailsVC = segue.destination as? ContactDetailsViewController
        detailsVC?.contact = contactList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "contactData", for: indexPath)
        let contact = contactList[indexPath.row]
        
        var contactName = contactCell.defaultContentConfiguration()
        contactName.text = "\(contact.name) \(contact.surname)"
        
        contactCell.contentConfiguration = contactName
        
        return contactCell
    }
}

//MARK: - UITableViewDelegate
extension ContactViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

