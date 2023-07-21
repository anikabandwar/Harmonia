//
//  MeditationView.swift
//  Harmonia
//
//  Created by Anika Bandwar on 7/19/23.
//

import SwiftUI

struct MeditationView: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
                
            VStack {
                Text("Meditation")
                    .font(.custom("Mali-Bold", size: 32))
                    .foregroundColor(.white)

                Spacer()

                Button(action: {
                    openYouTubeLink(urlString: "https://www.youtube.com/watch?v=bF_1ZiFta-E")
                }) {
                    Text("Square Breathing")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }

                Button(action: {
                    openYouTubeLink(urlString: "https://www.youtube.com/watch?v=pU80BEm43JM")
                }) {
                    Text("Guided Meditation - Anxiety")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }

                Button(action: {
                    openYouTubeLink(urlString: "https://www.youtube.com/watch?v=H2jTDhQhcbk")
                }) {
                    Text("Mind Gut Meditation")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    openYouTubeLink(urlString: "https://www.youtube.com/watch?v=30VMIEmA114")
                }) {
                    Text("5-4-3-2-1 Method")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    openYouTubeLink(urlString: "https://www.youtube.com/watch?v=2FGR-OspxsU")
                }) {
                    Text("10 Min. Healing Meditation")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }

                Spacer()
            }
            .padding()
        }
    }

    private func openYouTubeLink(urlString: String) {
        if let url = URL(string: urlString), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
