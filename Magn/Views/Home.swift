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
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Cheese 🧀")) {
                        Text("Cheese 🧀")
                    }
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Meat 🥩")) {
                        Text("Meat 🥩")
                    }
                    NavigationLink(destination: RelatedRecipies(selectedIngredient: "Pasta 🍝")) {
                        Text("Pasta 🍝")
                    }
                    
                } header: {
                    Text("Suggested")
                        .font(.title)
                        .fontWeight(.bold)
                    //  .foregroundColor(Color.black)
                        .padding(.horizontal, -20)
                    
                }
                Section{
//                    HStack{
//                        VStack{
//                            ProgressBar()
//                            Text("lala")
//                        }.padding(20)
//                        Spacer()
                    VStack(){
                            ProgressBar()
                            Text("Days spent cooking")
                    }.frame(maxWidth: .infinity)
                    //}
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
