//
//  Home.swift
//  Magn
//
//  Created by Valerio Mosca on 24/10/22.
//
// Suggested, Stats of the main page

import SwiftUI

struct Home: View {
    var body: some View {
        
        List {
            
            Section(header: Text("Suggested")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal, -20)) {
                    
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Tomato 🍅"))
                    {Text("Tomato 🍅")}
                    
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Cheese 🧀"))
                    {Text("Cheese 🧀")}
                    
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Meat 🥩")) {Text("Meat 🥩")}
                    
                    
                }.headerProminence(.increased)
            
            
            
            Section(header: Text("Stats")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal, -20)){
                    
                    VStack(){
                        ProgressBar()
                        Text("Days spent cooking")
                    }.frame(maxWidth: .infinity)
                }.headerProminence(.increased)
        }.listStyle(.insetGrouped)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
