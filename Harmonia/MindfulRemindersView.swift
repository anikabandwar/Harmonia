//
//  MindfulRemindersView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//

import SwiftUI

struct MindfulRemindersView: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
        VStack {
            Text("Mindful Reminders 🤍")
                .font(.custom("Mali-Bold", size: 32))
                .foregroundColor(Color.white)
                
            Spacer()
            
            HStack{
            Text("\nYou are loved.\n")
                .font(.custom("Mali-Bold", size: 22))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .border(Color.white, width: 2)
                Spacer()
                
            Text("\nYou are enough.\n")
                    .font(.custom("Mali-Bold", size: 22))
                    .foregroundColor(Color.white)
                    .border(Color.white, width: 2)
            } .padding()
                
            
            
            Spacer()
            
        }.padding()
        
        }
    }
}

struct MindfulRemindersView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulRemindersView()
    }
}
