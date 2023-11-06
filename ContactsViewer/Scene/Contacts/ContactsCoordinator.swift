//
//  ContactsCoordinator.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import Foundation
import UIKit

protocol ContactCoordinating: AnyObject {
    var controller: UIViewController? { get set }
    func goToDetails(contact: Contact)
    
}

class ContactCoordinator : ContactCoordinating {
    weak var controller: UIViewController?
    
    func goToDetails(contact: Contact) {
        let detailsController = ContactsDetailsFactory.makeModule(contact: contact)
        self.controller?.navigationController?.pushViewController(detailsController, animated: true)
    }
    
}
