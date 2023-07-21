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
                Color("yellow")
                    .ignoresSafeArea()
                
                VStack {
                    Text("Welcome, \(name)!")
                        .fontWeight(.bold)
                        .foregroundColor(Color("darkOrange"))
                        .font(.custom("Mali-Regular", size: 42))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: JournalView(topic: $topic, entry: $entry)) {
                        Text("Rant Journal")
                            .font(.custom("Mali-Regular", size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("darkOrange"))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink(destination: MindfulRemindersView()) {
                        Text("Mindful Reminders")
                            .font(.custom("Mali-Regular", size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("darkOrange"))
                            .cornerRadius(8)
                    }
                    
                    
                    NavigationLink(destination: LogView()) {
                        Text("Feelings Log")
                            .font(.custom("Mali-Regular", size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("darkOrange"))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink(destination: MeditationView()) {
                        Text("Meditation")
                            .font(.custom("Mali-Regular", size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("darkOrange"))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink(destination: ResourcesView()) {
                        Text("Resources")
                            .font(.custom("Mali-Regular", size: 32))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("darkOrange"))
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
