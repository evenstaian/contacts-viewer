//
//  VerticalItensListComponents.swift
//  ContactsViewer
//
//  Created by Evens Taian on 06/11/23.
//

import SwiftUI

struct VerticalItensListComponents: View {
    let itens : [[String:String]]? = [
        [
            "label": "mobile",
            "type": "INFO",
            "action": "action",
            "value" : "message.fill"
        ],
        [
            "label": "home",
            "type": "INFO",
            "action": "action",
            "value" : "message.fill"
        ],
        [
            "label": "birthday",
            "type": "INFO",
            "action": "action",
            "value" : ""
        ],
        [
            "label": "notes",
            "type": "INFO",
            "action": "action",
            "value" : ""
        ],
        [
            "label": "Send Message",
            "type": "BUTTON",
            "action": "action",
        ],
        [
            "label": "Share Contact",
            "type": "BUTTON",
            "action": "action",
        ],
        [
            "label": "Add to Favorites",
            "type": "BUTTON",
            "action": "action",
        ]
    ]
    var body: some View {
        List{
            ForEach(0..<itens!.count) { index in
                if let item = itens![index] {
                    VStack(alignment: .leading){
                        if let type = item["type"] {
                            if let label = item["label"]{
                                switch type {
                                case "INFO":
                                    Text(label)
                                        .font(.system(size: 12))
                                    if let value = item["value"] {
                                        Text(value)
                                            .foregroundColor(.accentColor)
                                    }
                                default:
                                    Text(label)
                                        .foregroundColor(.accentColor)
                                }
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

struct VerticalItensListComponents_Previews: PreviewProvider {
    static var previews: some View {
        VerticalItensListComponents()
    }
}
