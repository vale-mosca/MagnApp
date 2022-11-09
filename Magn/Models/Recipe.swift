//
//  Recipe.swift
//  Magn
//
//  Created by São Paulo on 27/10/22.
//

import Foundation
import SwiftUI

struct Recipe : Identifiable {
    var id = UUID()
    var Name: String
    var Description: String
    var Image: String
    var IngredientList: Array<String>
    var CookTime: Int
    var PrepTime: Int
    var Steps: Array<Step>
    var Allergens: Array<Allergen>
    
}


