//
//  TextArea.swift
//  TwitterApp
//
//  Created by Jai  on 13/01/24.
//

import SwiftUI

struct TextArea: View {
    @Binding  var text: String
    let placeholder:String
    init(_ placeholder: String, text:Binding<String>){
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack{
            if text.isEmpty{
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal , 8)
                    .padding(.vertical , 12)

            } 
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}

