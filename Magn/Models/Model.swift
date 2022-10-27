//
//  Model.swift
//  Magn
//
//  Created by Sao Paulo on 20/10/22.
//

import Foundation


struct Step{
    var Image: String //prendiamo dall'assets
    var Azione: String
    var Descrizione: String
}

struct Allergen{
    var Name: String
    var Image: String
}

struct Recipe {
    var Name: String
    var Description: String
    var Image: String
    var IngredientList: Array<String>
    var CookTime: Int
    var PrepTime: Int
    var Steps: Array<Step>
    var Allergens: Array<Allergen>
    
}

var step1Caprese = Step(Image: "String", Azione: "String", Descrizione: "String")
var step2Caprese = Step(Image: "aa", Azione: "String", Descrizione: "String")

var glutenFree = Allergen(Name: "glutenFree", Image: "profile.fill")
var lactoseIncluded = Allergen(Name: "lactoseIncluded", Image: "profile.fill")


var caprese = Recipe(
    Name: "Caprese",
    Description: "String",
    Image: "String",
    IngredientList: ["mozzarella","pomodoro","basilico"],
    CookTime: 10,
    PrepTime: 10,
    Steps: [step1Caprese, step2Caprese],
    Allergens: [glutenFree,lactoseIncluded]
)

var caprese2 = Recipe(
    Name: "Caprese",
    Description: "String",
    Image: "String",
    IngredientList: ["mozzarella","pomodoro","basilico"],
    CookTime: 10,
    PrepTime: 10,
    Steps: [step1Caprese, step2Caprese],
    Allergens: [glutenFree,lactoseIncluded]
)

var cookBook: [Recipe] = [caprese, caprese2]

func createIngredientList () -> Array<String> {
    var ingredientsListSorted: [String] = []
    for Recipe in cookBook{
        for ingredient in Recipe.IngredientList {
            if(Recipe.IngredientList.contains(ingredient)){
                continue
            } else {
                ingredientsListSorted.append(ingredient)
            }
        }
    }
    return ingredientsListSorted
} //we don't use it anymore, our ingredientList is written by us, but let's keep it
