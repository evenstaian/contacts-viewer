//
//  SwiftUIView.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import SwiftUI

struct RowViewComponent: View {
    let contact: Contact
    let isLast: Bool
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                AsyncImage(url: URL(string: contact.pictureURL)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                    } else {
                        ProgressView()
                    }
                }
                VStack(alignment: .leading){
                    Text("\(contact.firstName) \(contact.lastName)")
                        .font(.system(size: 12, weight: .bold, design: .default))
                    Text(contact.twitterHandle)
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
            }
            if !isLast {
                Divider()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let contact = Contact(id: 1, firstName: "John", lastName: "Bally", username: "", email: "", gender: "", pictureURL: "", phone: "", birthday: "", twitterHandle: "")
        RowViewComponent(contact: contact, isLast: false)
    }
}
