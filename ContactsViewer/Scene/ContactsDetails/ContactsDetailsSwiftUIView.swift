//
//  ContactsDetailsSwiftUIView.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import SwiftUI

struct ContactsDetailsSwiftUIView: View {
    let contact : Contact
    
    var body: some View {
        VStack{
            ProfileViewComponent(imageURL: contact.pictureURL, name: "\(contact.firstName) \(contact.lastName)")
            ActionsListComponent()
            VerticalItensListComponents()
        }
    }
}

struct ContactsDetailsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let contact = Contact(id: 1, firstName: "", lastName: "", username: "", email: "", gender: "", pictureURL: "", phone: "", birthday: "", twitterHandle: "")
        ContactsDetailsSwiftUIView(contact: contact)
    }
}
