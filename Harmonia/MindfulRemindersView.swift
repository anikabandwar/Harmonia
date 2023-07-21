//
//  MindfulRemindersView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//

import SwiftUI

struct MindfulRemindersView: View {
    @State private var customReminder: String = ""
    @State private var reminders = [
        "You are loved.",
        "You are enough.",
        "You are worthy.",
        "You are strong.",
        "You are unique.",
        "You are beautiful.",
        "You are capable.",
    ]
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Text("Mindful Reminders 🤍")
                    .font(.custom("Mali-Bold", size: 32))
                    .foregroundColor(.white)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                        ForEach(reminders, id: \.self) { reminder in
                            Text(reminder)
                                .font(.custom("Mali-Bold", size: 22))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
                
                TextField("Add new reminder", text: $customReminder)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.black)
                    .padding(.horizontal)
                
                Button(action: addCustomReminder) {
                    Text("Add New Reminder")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.bottom)
            }
            .padding()
        }
    }
    
    private func addCustomReminder() {
        if !customReminder.isEmpty {
            reminders.append(customReminder)
            customReminder = ""
        }
    }
}

struct MindfulRemindersView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulRemindersView()
    }
}
