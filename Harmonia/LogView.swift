//
//  LogView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//

import SwiftUI

struct FeelingEntry: Identifiable {
    let id = UUID()
    var date: Date
    var emoji: String
}

struct LogView: View {
    @State private var date = Date()
        @State private var emoji = ""
        @State private var entries: [FeelingEntry] = []
    var body: some View {
        VStack {
            Text("Daily Feelings Log")
                .font(.custom("Mali-Bold", size: 32))
                .foregroundColor(Color("darkOrange"))
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.top)
                .padding(.top)
                .padding(.top)
            Form {
                Section(header: Text("Select Date")) {
                    DatePicker(selection: $date, in: ...Date(), displayedComponents: .date) {
                        Text("Date")
                    }
                }
                
                Section(header: Text("Enter Emoji")) {
                    TextField("Emoji", text: $emoji)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
            Spacer()
            Button(action: addEntry) {
                Text("Add Entry")
                    .font(.custom("Mali-Bold", size: 22))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("darkOrange"))
                    .cornerRadius(8)
            }
                List(entries) { entry in
                    HStack {
                        Text("\(entry.date, formatter: DateFormatter.date)")
                        Spacer()
                        Text(entry.emoji)
                }
            }

            .padding()
                
                
            Spacer()
            
            
        }
        .background(Color("yellow"))
        .ignoresSafeArea()
    }
    private func addEntry() {
        let entry = FeelingEntry(date: date, emoji: emoji)
        entries.append(entry)
        emoji = ""
    }
}

extension DateFormatter {
    static let date: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}
