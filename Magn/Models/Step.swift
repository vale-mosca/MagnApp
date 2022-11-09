//
//  Step.swift
//  Magn
//
//  Created by São Paulo on 27/10/22.
//

import Foundation

//Hashable per far funzionare il for each in StepsView

struct Step: Hashable{
    var Image: String
    var Azione: String
    var Descrizione: String
}
