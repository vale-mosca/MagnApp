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
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Tomato 🍅")) {
                        Text("Tomato 🍅")
                        
                    }
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Mozzarella 🧀")) {
                        Text("Mozzarella 🧀")
                    }
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Meat 🥩")) {
                        Text("Meat 🥩")
                    }
                    
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Fish 🐟")) {
                        Text("Fish 🐟")
                    }
                } header: {
                    Text("Suggested")
                        .font(.title)
                        .fontWeight(.bold)
                    //  .foregroundColor(Color.black)
                        .padding(.horizontal, -20)
                    
                }
                Section{
                    HStack{
                        VStack{
                            ProgressBar()
                            Text("lala")
                        }.padding(20)
                        Spacer()
                        VStack{
                            ProgressBar()
                            Text("Days spent cooking")
                        }.padding(20)
                    }
                } header: {
                    Text("Stats")
                        .font(.title)
                        .fontWeight(.bold)
                    //  .foregroundColor(Color.black)
                        .padding(.horizontal, -20)
                }
            }
        }
    }
}
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }
