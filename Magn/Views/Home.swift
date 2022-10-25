//
//  Home.swift
//  Magn
//
//  Created by Valerio Mosca on 24/10/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading) {
            List {
                Section {
                    NavigationLink(destination: RelatedRecipies()) {
                        Text("Tomato")
                    }
                    NavigationLink(destination: RelatedRecipies()) {
                        Text("Tomato")
                    }
                    NavigationLink(destination: RelatedRecipies()) {
                        Text("Tomato")
                    }
                    
                    NavigationLink(destination: RelatedRecipies()) {
                        Text("Tomato")
                    }
                } header: {
                    Text("Suggested")
                        .font(.title)
                        .fontWeight(.bold)
                    //  .foregroundColor(Color.black)
                        .padding(.horizontal, -20)
                                       
                }
                
            }
        }
    }
}
