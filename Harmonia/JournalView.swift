//
//  JournalView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//

import SwiftUI

struct JournalEntry: Identifiable {
    let id = UUID()
    var topic: String
    var entry: String
}

struct JournalView: View {
    @Binding var topic: String
    @Binding var entry: String
    @State private var entries: [JournalEntry] = []
    
    var body: some View {
        VStack {
            Text("Rant Journal")
                .font(.largeTitle)
                .fontWeight(.bold)
            
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
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            Button(action: //screen reset
            ) {
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
    }

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView(topic: .constant(""), entry: .constant(""))
    }
}
