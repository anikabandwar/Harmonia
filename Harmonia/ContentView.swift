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
                    .multilineTextAlignment(.center)
                   
                
                Text("Find your inner rhythm, create harmony with Harmonia")
                    .font(.title2)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                TextField("Enter your name", text: $name)
                    .padding()
                    .border(/*@START_MENU_TOKEN@*/Color.pink/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .padding()
                
                Button(action: {
                    isSubmitted = true
                }) {
                    Text("Start")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                }
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
            .background(
                            Image("sunset") 
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
            )
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
