//
//  ActionsListComponent.swift
//  ContactsViewer
//
//  Created by Evens Taian on 06/11/23.
//

import SwiftUI

struct ActionsListComponent: View {
    let actions : [[String:String]]? = [
        [
            "name": "message",
            "action": "action",
            "image" : "message.fill"
        ],
        [
            "name": "call",
            "action": "action",
            "image" : "phone.fill"
        ],
        [
            "name": "arlo",
            "action": "action",
            "image" : "video.fill"
        ],
        [
            "name": "mail",
            "action": "action",
            "image" : "envelope.fill"
        ],
        [
            "name": "pay",
            "action": "action",
            "image" : "dollarsign.circle.fill"
        ]
    ]
    
    var body: some View {
        HStack(spacing: 20){
            ForEach(0..<actions!.count) { index in
                VStack{
                    if let action = actions![index],
                    let imageName : String = action["image"],
                    let actionName = action["name"]{
                        Button(action: {
                        }) {
                            Image(systemName: imageName)
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30, alignment: .center)
                                .padding(10)
                                .background(Color.accentColor)
                                .cornerRadius(30)
                        }
                        Text(actionName)
                            .font(.system(size: 12))
                            .foregroundColor(.accentColor)
                    }
                }
            }

        }
    }
}

struct ActionsListComponent_Previews: PreviewProvider {
    static var previews: some View {
        ActionsListComponent()
    }
}
