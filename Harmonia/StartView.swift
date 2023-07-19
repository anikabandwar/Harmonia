//
//  StartView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//••••••••••••••••••••••••••••••••••••••••••


//StarView will lead to home view

import SwiftUI

struct StartView: View {
    @State private var name: String = ""
    @State private var isSubmitted: Bool = false
    var body: some View {
        NavigationView{
            VStack {
                Text("Welcome!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                TextField("Enter your name", text: $name)
                    .padding()
                
                NavigationLink(
                    destination: HomeView(name: name),
                    isActive: $isSubmitted,
                    label: {
                        Text("Submit")
                        })
                        .isDetailLink(false)
                    }
                }
                Button(action: {
                    greetUser()
                    }) {
                    Text("Submit")
                }
                Spacer()
            }.padding()
        }
    private func greetUser() {
            if !name.isEmpty {
                let greeting = "Hello, \(name)!"
                print(greeting)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
