//
//  HomeView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//•••••••••••••••••••••••••••••••••••••••••

//HomeView will lead to JournalView, Recourcesview, MindfulReminderView, MeditationView, & LogView

import SwiftUI

struct HomeView: View {
    var name: String
    
    var body: some View {
        VStack {
            Text("Welcome, \(name)!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("This is the HomeView.")
            
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(name: "Name")
    }
}
