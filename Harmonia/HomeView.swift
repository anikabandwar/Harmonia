//
//  HomeView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//•••••••••••••••••••••••••••••••••••••••••

//HomeView will lead to JournalView, Recourcesview, MindfulReminderView, MeditationView, & LogView

import SwiftUI

struct HomeView: View {
    @State var name: String
     @State var topic = ""
     @State var entry = ""
     
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome, \(name)!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
                NavigationLink(destination: JournalView(topic: $topic, entry: $entry)) {
                    Text("Journal")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: MindfulRemindersView()) {
                    Text("Mindful Reminders")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: MeditationView()) {
                    Text("Meditation")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: LogView()) {
                    Text("Log")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: ResourcesView()) {
                    Text("Resources")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                }
                
                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(name: "Name")
    }
}
