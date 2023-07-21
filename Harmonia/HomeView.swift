//
//  HomeView.swift
//  Harmonia
//
//  Created by Anika Bandwar on 7/19/23.
//•••••••••••••••••••••••••••••••••••••••••

//HomeView will lead to JournalView, Recourcesview, MindfulReminderView, MeditationView, & LogView

import SwiftUI

struct HomeView: View {
    let name: String
    @State private var topic = ""
    @State private var entry = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack {
                    Text("Welcome, \(name)!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: JournalView(topic: $topic, entry: $entry)) {
                        Text("Rant Journal")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(8)
                    }
                    
                    NavigationLink(destination: MindfulRemindersView()) {
                        Text("Mindful Reminders")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(8)
                    }
                    
                    
                    NavigationLink(destination: LogView()) {
                        Text("Feelings Log")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(8)
                    }
                    
                    NavigationLink(destination: MeditationView()) {
                        Text("Meditation")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(8)
                    }
                    
                    NavigationLink(destination: ResourcesView()) {
                        Text("Resources")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(8)
                    }
                    
                    Spacer()
                }
                .padding()
            
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(name: "Name")
    }
}
