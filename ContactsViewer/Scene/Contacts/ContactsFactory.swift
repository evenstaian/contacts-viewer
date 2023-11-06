//
//  ContactsFactory.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import Foundation
import UIKit
import SwiftUI

enum ContactsFactory{
    static func makeModule() -> UIViewController {
        let coordinator = ContactCoordinator()
        let service = ContactsService()
        let viewModel = ContactsViewModel(service: service, coordinator: coordinator)
        let controller = UIHostingController(rootView: ContactsSwiftUIView(viewModel: viewModel))
        
        coordinator.controller = controller
        
        return controller
    }
}
