//
//  ContentView.swift
//  Magn
//
//  Created by Valerio Mosca on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(){
            VStack(alignment: .leading, spacing: 20.0) {
                Image(systemName:"profile.fill")
                
                HStack(alignment: .top) {
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Hello Chef!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        //  .foregroundColor(Color.black)
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                        Text("Let's create something tasty.")
                            .font(.subheadline)
                            .padding(.horizontal)
                        //  .foregroundColor(Color.black)
                    }
                    
                    Image("chef")
                        .padding([.horizontal])
                }
                
                Text("Suggested")
                    .font(.title)
                    .fontWeight(.bold)
                //  .foregroundColor(Color.black)
                    .padding(.horizontal)
                
                
                List {
                    NavigationLink(destination: RelatedRecipies()) {
                        Text("Tomato")
                    }
                    NavigationLink(destination: RelatedRecipies()) {
                        Text("Tomato")
                    }
                    NavigationLink(destination: RelatedRecipies()) {
                        Text("Tomato")
                    }
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color("AccentColor"))
        }
        
    }
}

extension View {
    var previewedInAllColorSchemes: some View {
        ForEach(ColorScheme.allCases, id: \.self, content: preferredColorScheme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewedInAllColorSchemes
    }
}
