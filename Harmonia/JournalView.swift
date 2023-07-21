//
//  JournalView.swift
//  Harmonia
//
//  Created by Anika Bandwar on 7/19/23.
//

import SwiftUI

struct JournalView: View {
    @Binding var topic: String
    @Binding var entry: String
    
    var body: some View {
        VStack {
            Text("Rant Journal")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            Form {
                Section(header: Text("Topic")) {
                    TextField("Enter topic", text: $topic)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Section(header: Text("Entry")) {
                    TextEditor(text: $entry)
                        .frame(height: 500)
                        .border(Color.gray, width: 1)
                }
            }
            .padding()
            
            Button(action: {
                releaseEntry()
                
            }) {
                Text("Release")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
                
            }
            
        }
        .padding()
    }
    
    private func releaseEntry() {
        topic = ""
        entry = ""
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView(topic: .constant(""), entry: .constant(""))
    }
}
