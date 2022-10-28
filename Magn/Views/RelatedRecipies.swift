//
//  RelatedRecipies.swift
//  Magn
//
//  Created by Valerio Mosca on 21/10/22.
// up

import Foundation
import SwiftUI


struct RelatedRecipies: View {
    
    var selectedIngredient: String
    @ObservedObject var recipeData: RecipeData = RecipeData()
    @State var resultArr: [Recipe] = []
    
    var body: some View {
        
        ScrollView{
            Text(selectedIngredient).padding(10)
                .font(.title)
                .fontWeight(.bold)
            //  .foregroundColor(Color.black)
            ForEach(resultArr) { recipe in
                NavigationLink(destination: StepsView(selectedRecipe: recipe)){
                    CardView(card:  Card(imagerecipe: recipe.Image,
                                         titleRecipe: recipe.Name,
                                         numIngredients: recipe.IngredientList.count,
                                         prepTime: recipe.PrepTime,
                                         cookTime: recipe.CookTime)).frame(width: 358, height: 200).padding(10)
                }
            }
        }.onAppear{
            resultArr = []
            for Recipe in recipeData.cookBook{
                    for ingredient in Recipe.IngredientList {
                        if(ingredient == selectedIngredient){
                            resultArr.append(Recipe)
                            break
                        }
                }
            }
            //print(resultArr)
        }
    }
}


//    struct RelatedRecipies_Previews: PreviewProvider {
//        static var previews: some View {
//            RelatedRecipies(selectedRecipe: null)
//        }
//    }
