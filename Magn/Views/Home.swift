//
//  Home.swift
//  Magn
//
//  Created by SÃ£o Paulo on 24/10/22.
//
// Suggested, Stats of the main page

import SwiftUI

struct Home: View {
    var body: some View {
        
        List {
            
            Section(header: Text("Suggested")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal, -15)
            ) {
                    
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Tomato ð"))
                    {Text("Tomato ð")}
                    
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Cheese ð§"))
                    {Text("Cheese ð§")}
                    
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Meat ð¥©")) {Text("Meat ð¥©")}
                    
                    
                }.headerProminence(.increased)
            
            
            
            Section(header: Text("Stats")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal, -15)
            ){
                    
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
