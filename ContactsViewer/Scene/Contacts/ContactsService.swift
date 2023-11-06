//
//  ContactsService.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import Foundation
import SwiftUI

protocol ContactsServicing {
    func getContacts(completion: @escaping(Result<[Contact], NetworkError>) -> Void)
}

class ContactsService : ContactsServicing {
    func getContacts(completion: @escaping(Result<[Contact], NetworkError>) -> Void) {
        ApiRequester().getContacts { result in
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
    
    
}
