//
//  ContentView.swift
//  Harmonia
//
//  Created by Anika Bandwar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var isSubmitted: Bool = false

    var body: some View {
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
                        .border(Color.pink, width: 1)
                        .cornerRadius(10)
                        .padding()

                    NavigationLink(
                        destination: HomeView(name: name),
                        isActive: $isSubmitted,
                        label: {
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
                        }
                    )

                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
