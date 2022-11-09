//
//  Step2.swift
//  Magn
//
//  Created by São Paulo on 29/10/22.
//
//  Steps of the recipe

import SwiftUI


struct RecipeSteps: View {
    
    var stepRecipe : Step
    
    var body: some View {
        VStack{
         
            ZStack{
                Spacer()
                Image(stepRecipe.Image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 358, height: 250)
                    
                    //.ignoresSafeArea()
                    .cornerRadius(50)
                   // .padding(.horizontal, 10)
                    //.shadow(radius: 10)
            }
            
                Text(stepRecipe.Azione)
                .font(.title)
                .multilineTextAlignment(.leading)
                .bold()
            
            Text(stepRecipe.Descrizione).padding()
            Spacer()
        }
    }
}




struct RecipeSteps_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSteps(stepRecipe: Step(Image: "polpettealsugo1", Azione: "Mix&Season", Descrizione: "Put in a bowl put some minced meat, bread soaked in milk, chopped parsley and grated Parmesan, then season with salt and pepper"))
    }
}
