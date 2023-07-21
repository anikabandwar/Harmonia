//
//  ResourcesView.swift
//  Harmonia
//
//  Created by Kayla Ann Newton on 7/19/23.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
                
            VStack {
                Text("Resources")
                    .font(.custom("Mali-Bold", size: 32))
                    .foregroundColor(.white)
                    .padding()

                Spacer()

                ResourceText(title: "Suicide Help Hotline", phoneNumber: "1-800-273-8255")
                ResourceText(title: "Domestic Violence Hotline", phoneNumber: "1-800-799-7233")
                ResourceText(title: "Mental Health Support", phoneNumber: "1-800-950-6264")
                ResourceText(title: "Self-Harm Hotline", phoneNumber: "1-800-366-8288")
                ResourceText(title: "LGBTQIA+ Hotline", phoneNumber: "1-888-843-4564")
                ResourceText(title: "Crisis Support Services", phoneNumber: "1-800-273-8255")

                Spacer()
            }
            .padding()
        }
    }
}

struct ResourceText: View {
    let title: String
    let phoneNumber: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text(phoneNumber)
                .font(.body)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.blue)
        .cornerRadius(8)
        .padding(.vertical, 8)
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
