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
        ZStack {
            Color.orange
                .ignoresSafeArea()
        NavigationView {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
            VStack {
                Text("Harmonia")
                    .font(.custom("Mali-Bold", size: 56))
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                   
                
                
                Text("Find your inner rhythm, create harmony with Harmonia")
                    .font(.custom("Mali-Medium", size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Image("sunset")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .padding()
                    .cornerRadius(20)
                
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
                        .background(Color.pink)
                        .cornerRadius(10)
                }
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
            }
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

            
            .padding()
            .cornerRadius(20)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
