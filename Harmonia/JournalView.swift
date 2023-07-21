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
                Spacer()
                HStack {
                    Text("Rant Journal")
                        .font(.custom("Mali-Regular", size: 42))
                        .fontWeight(.bold)
                        .foregroundColor(Color("darkOrange"))
                        .padding(.top)
                        .padding(.top)
                    Image("journal")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                        .padding(.top)
                        .padding(.top)
                }
                
                Form {
                    Section(header: Text("Topic")) {
                        TextField("Enter topic", text: $topic)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    Section(header: Text("Entry")) {
                        TextEditor(text: $entry)
                            .frame(height: 400)
                    }
                }
                .padding()
                
                Button(action: {
                    releaseEntry()
                    
                }) {
                    Text("Release")
                        .font(.custom("Mali-Regular", size: 28))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("darkOrange"))
                        .cornerRadius(8)
                    
                }
                
            }
        
        
        .padding()
            .background(Color("pink"))
            .ignoresSafeArea()
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
