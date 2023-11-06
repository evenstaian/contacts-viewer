//
//  ContactsSwiftUIView.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import SwiftUI

struct ContactsSwiftUIView<VM>: View where VM: ContactsViewmodeling {
    
    @ObservedObject private var viewModel: VM
    
    init(viewModel: VM){
        self.viewModel = viewModel
    }
    
    let contactsMock = [Contact(id: 1, firstName: "john", lastName: "", username: "", email: "", gender: "", pictureURL: "", phone: "", birthday: "", twitterHandle: "")]
    
    var body: some View {
        TabView {
            setupFavoritesView()
            .tabItem {
                Image(systemName: "star.fill")
                Text("Favorites")
            }
            Text("Recents")
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("Recents")
                }
            Text("Contacts")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Contacts")
                }
            Text("Keypad")
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Keypad")
                }
            Text("Voicemail")
                .tabItem {
                    Image(systemName: "mic.fill")
                    Text("Voicemail")
                }
        }
        
    }
    
    func setupFavoritesView() -> some View {
        NavigationView {
            VStack{
                List{
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(viewModel.contacts, id: \.self) { contact in
                            let isLast = contact == viewModel.contacts.last
                            
                            RowViewComponent(contact: contact, isLast: isLast)
                                .onTapGesture {
                                    viewModel.goToDetails(contact: contact)
                                }
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
            .navigationBarItems(leading: Button(action: {
                
            }) {
                Image(systemName: "plus")
            }, trailing: Button(action: {
                
            }){
                Text("Edit")
            })
        }
    }
}

struct ContactsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let coordinator = ContactCoordinator()
        let service = ContactsService()
        let viewModel = ContactsViewModel(service: service, coordinator: coordinator)
        ContactsSwiftUIView(viewModel: viewModel)
    }
}
