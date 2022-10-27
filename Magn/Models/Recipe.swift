//
//  Recipe.swift
//  Magn
//
//  Created by Valerio Mosca on 27/10/22.
//

import Foundation
import SwiftUI

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


