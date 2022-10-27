//
//  RelatedRecipies.swift
//  Magn
//
//  Created by Valerio Mosca on 21/10/22.
// up

import SwiftUI
import Foundation

struct RelatedRecipies: View {
    
    var selectedIngredient: String
    @ObservedObject var recipeData: RecipeData

    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RelatedRecipies_Previews: PreviewProvider {
    static var previews: some View {
        RelatedRecipies(selectedIngredient: "")
    }
}
