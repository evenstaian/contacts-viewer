//
//  ProfileComponent.swift
//  ContactsViewer
//
//  Created by Evens Taian on 06/11/23.
//

import SwiftUI

struct ProfileViewComponent: View {
    let imageURL: String
    let name: String
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: imageURL)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                } else {
                    ProgressView()
                }
            }
            Text(name)
                .font(.system(size: 18))
        }
    }
}

struct ProfileViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewComponent(imageURL: "", name: "")
    }
}
