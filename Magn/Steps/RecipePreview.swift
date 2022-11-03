//
//  Step1.swift
//  Magn
//
//  Created by Giulia Casucci on 29/10/22.
//
//  Preview of the recipe

import SwiftUI

struct RecipePreview: View {
    
    var selectedRecipe: Recipe
    
    var body: some View {
        VStack{
            
            ZStack{
                
                Image(selectedRecipe.Image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 358, height: 250)
                    //.ignoresSafeArea()
                    .cornerRadius(50)
                    //.padding(.horizontal, 10)
                //.shadow(radius: 10)
            }
            
            Text(selectedRecipe.Description).padding()
            
            HStack{
                VStack(alignment: .leading, spacing: 30){
                    Text("Ingredients")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .bold()
                        .padding(.leading, 15)
                    
                    
                    VStack(alignment: .leading, spacing: 10.0){
                        ForEach(selectedRecipe.IngredientList, id: \.self)
                        { ingredient in Text("• \(ingredient)")}
                    }.padding(.leading)
                    
                    Spacer()
                    
                }.padding(.trailing,30)
                
                
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Text("Prep: ").font(.system(size: 16))
                            .fontWeight(.bold).foregroundColor(Color.black)
                        
                        Text("\(selectedRecipe.PrepTime) min").font(.system(size: 16)).foregroundColor(Color.black)
                    }
                    HStack{
                        Text("Cook:").font(.system(size: 16))
                            .fontWeight(.bold).foregroundColor(Color.black)
                        
                        Text("\(selectedRecipe.CookTime) min").font(.system(size: 16)).foregroundColor(Color.black)
                    }
                    
                    
                    
                    //USO DEGLI INDICI PERICOLOSO. USARE FOR EACH
                    /* HStack{
                     Image(selectedRecipe.Allergens[0].Image)
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     Image(selectedRecipe.Allergens[1].Image)
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     }.padding(.leading, -10 )
                     
                     */
                    
                    Spacer()
                }.padding(.leading, 60 )
                Spacer()
            }
            .padding()
        }
    }
}

struct RecipePreview_Previews: PreviewProvider {
    static var previews: some View {
        RecipePreview(selectedRecipe:  Recipe(
            Name: "Bruschetta",
            Description: "A great classic of Italian cuisine, traditionally served as an aperitif, appetizer or even as a rich and genuine snack",
            Image: "polpettealsugo",
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
