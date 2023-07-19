//
//  ContentView.swift
//  Harmonia
//
//  Created by Anika on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var isSubmitted: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Harmonia")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                
                TextField("Enter your name", text: $name)
                    .padding()
                
                Button(action: {
                    isSubmitted = true
                }) {
                    Text("Start")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                Spacer()
            }
            .padding()
            .background(
                NavigationLink(
                    destination: HomeView(name: name),
                    isActive: $isSubmitted,
                    label: {
                        EmptyView()
                    }
                )
                .hidden()
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
