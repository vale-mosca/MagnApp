//
//  Model.swift
//  Magn
//
//  Created by Sao Paulo on 20/10/22.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var cookBook: [Recipe] = [
        Recipe(
            Name: "Caprese",
            Description: "String",
            Image: "String",
            IngredientList: ["Mozzarella 🧀","Tomato 🍅","Basil 🌿"],
            CookTime: 10,
            PrepTime: 10,
            Steps: [Step(Image: "String", Azione: "String", Descrizione: "String"),
                    Step(Image: "String", Azione: "String", Descrizione: "String")],
            Allergens: [Allergen(Name: "", Image: ""),
                       Allergen(Name: "", Image: "")]
        ),
        Recipe(
            Name: "Caprese",
            Description: "String",
            Image: "String",
            IngredientList: ["Mozzarella 🧀","Tomato 🍅","Basil 🌿"],
            CookTime: 10,
            PrepTime: 10,
            Steps: [Step(Image: "String", Azione: "String", Descrizione: "String"),
                    Step(Image: "String", Azione: "String", Descrizione: "String")],
            Allergens: [Allergen(Name: "", Image: ""),
                       Allergen(Name: "", Image: "")]
        )
        ]
    
}

class MyIngredients: ObservableObject{
    @Published var myIngredients = [
        "Mozzarella 🧀", "Tomato 🍅", "Basil 🌿","Meat 🥩","Fish 🐟"
    ]
    init(myIngredients: [String] = [
        "Mozzarella 🧀", "Tomato 🍅", "Basil 🌿","Meat 🥩","Fish 🐟"
    ]) {
        self.myIngredients = myIngredients
    }
}
