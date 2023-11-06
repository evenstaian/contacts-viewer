//
//  ContactsDetailsFactory.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import Foundation
import UIKit
import SwiftUI

enum ContactsDetailsFactory{
    static func makeModule(contact: Contact) -> UIViewController {
        let controller = UIHostingController(rootView: ContactsDetailsSwiftUIView(contact: contact))
        return controller
    }
}
