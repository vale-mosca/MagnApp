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

var caprese = Recipe(Name: <#T##String#>, Description: <#T##String#>, Image: <#T##String#>, IngredientList: <#T##Array<String>#>, CookTime: <#T##Int#>, PrepTime: <#T##Int#>, Steps: <#T##Array<Step>#>, Allergens: <#T##Array<Allergen>#>)

//
