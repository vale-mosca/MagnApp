//
//  StepsView.swift
//  Magn
//
//  Created by São Paulo on 29/10/22.
//
// Steps of the recipe selected

import SwiftUI

struct StepsView: View {
    var selectedRecipe: Recipe
    
    var body: some View {
        VStack {
            
            Divider()//Non lo togliete che implode la TabView
            
            TabView {
                
                RecipePreview(selectedRecipe: selectedRecipe)
                
                //ERROR GENERIC STRUCT 'FOREACH REQUIRES THAT 'STEP' CONFORM TO 'HASHABLE'
                ForEach(selectedRecipe.Steps, id: \.self)
                { step in
                    RecipeSteps(stepRecipe: step)
                }
                
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .navigationTitle(selectedRecipe.Name)
    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        StepsView(selectedRecipe: Recipe(
            Name: "Bruschetta",
            Description: "A great classic of Italian cuisine, traditionally served as an aperitif, appetizer or even as a rich and genuine snack",
            Image: "String",
            IngredientList: ["Tomato 🍅","Bread 🍞", "Oregano 🌿"],
            CookTime: 5,
            PrepTime: 10,
            Steps: [Step(Image: "String", Azione: "Mix&Season", Descrizione: "Put in a bowl put some minced meat, bread soaked in milk, chopped parsley and grated Parmesan, then season with salt and pepper"),
                    Step(Image: "String", Azione: "Cut&Grill", Descrizione: "In the meantime, cut the bread into slices. Heat a grill and lay the slices of bread on top. Grill them on both sides until they are toasted"),
                    Step(Image: "String", Azione: "Place&Season", Descrizione: "Distribute the tomato salad on the slices of bread, season again with a drizzle of oil, let it rest for a couple of minutes and...your tomato bruschetta are ready!")],
            Allergens: [Allergen(Name: "lactosefree", Image: ""),
                        Allergen(Name: "", Image: "")]) )
    }
}



