//
//  ContactsViewModel.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import Foundation
import Combine

protocol ContactsViewmodeling: ObservableObject {
    var contacts : [Contact] { get set}
    func goToDetails(contact: Contact)
}

class ContactsViewModel: ContactsViewmodeling {
    
    @Published var contacts: [Contact] = []
    
    var service: ContactsServicing?
    var coordinator: ContactCoordinating?
    
    init(service: ContactsServicing, coordinator: ContactCoordinating){
        self.service = service
        self.coordinator = coordinator
        run()
    }
    
    func run(){
        service?.getContacts(completion: { result in
            switch result {
            case .success(let contacts):
                self.contacts = contacts
            default:
                return
            }
        })
    }
    
    func goToDetails(contact: Contact) {
        coordinator?.goToDetails(contact: contact)
    }
}
