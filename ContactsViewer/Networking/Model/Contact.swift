//
//  Contact.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import Foundation

struct Contact : Decodable, Hashable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let username: String
    let email: String
    let gender: String
    let pictureURL: String
    let phone: String
    let birthday: String
    let twitterHandle: String
}
