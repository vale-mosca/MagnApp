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
            Image: "caprese",
            IngredientList: ["Cheese 🧀","Tomato 🍅","Basil 🌿"],
            CookTime: 10,
            PrepTime: 10,
            Steps: [Step(Image: "String", Azione: "String", Descrizione: "String"),
                    Step(Image: "String", Azione: "String", Descrizione: "String")],
            Allergens: [Allergen(Name: "", Image: ""),
                        Allergen(Name: "", Image: "")]
        ),
        Recipe(
            Name: "Bruschetta",
            Description: "A great classic of Italian cuisine, traditionally served as an aperitif, appetizer or even as a rich and genuine snack",
            Image: "bruschette",
            IngredientList: ["Tomato 🍅","Bread 🍞", "Oregano 🌿"],
            CookTime: 5,
            PrepTime: 10,
            Steps: [Step(Image: "String", Azione: "Mix&Season", Descrizione: "Put in a bowl put some minced meat, bread soaked in milk, chopped parsley and grated Parmesan, then season with salt and pepper"),
                    Step(Image: "String", Azione: "Cut&Grill", Descrizione: "In the meantime, cut the bread into slices. Heat a grill and lay the slices of bread on top. Grill them on both sides until they are toasted"),
                    Step(Image: "String", Azione: "Place&Season", Descrizione: "Distribute the tomato salad on the slices of bread, season again with a drizzle of oil, let it rest for a couple of minutes and...your tomato bruschetta are ready!")],
            Allergens: [Allergen(Name: "lactosefree", Image: ""),
                        Allergen(Name: "", Image: "")]),
        Recipe(
            Name: "Meatballs",
            Description: "A simple and tasty dish, a timeless classic of Italian cuisine. Who doesn't like meatballs?",
            Image: "polpettealsugo",
            IngredientList: ["Tomato 🍅","Meat 🥩", "Bread 🍞", "Milk 🥛"],
            CookTime: 25,
            PrepTime: 10,
            Steps: [Step(Image: "polpettealsugo1", Azione: "Mix&Season", Descrizione: "Put in a bowl put some minced meat, bread soaked in milk, chopped parsley and grated Parmesan, then season with salt and pepper"),
                    Step(Image: "polpettealsugo2", Azione: "Shape&StartCooking", Descrizione: "Shape the dough with your hands until you create many meatballs, then in a high-sided pan, brown the meatballs with a drizzle of oil, add the tomato puree and cook for a few minutes"),
                    Step(Image: "polpettealsugo3", Azione: "Continue&Serve", Descrizione: "Continue cooking over low heat and with a lid for 15 minutes, then transfer the meatballs with tomato sauce on a serving dish and serve hot!")],
            Allergens: [Allergen(Name: "", Image: ""),
                        Allergen(Name: "", Image: "")]
        ),
        
        
        Recipe(
            Name: "Scrambled eggs with courgettes",
            Description: "It’s a very cheap, easy dish, quick to prepare and delicious like nothing else",
            Image: "frittatadizucchine",
            IngredientList: ["Eggs 🥚","Zucchini 🥒", "Milk 🥛", "Butter 🧈"],
            CookTime: 15,
            PrepTime: 20,
            Steps: [Step(Image: "String", Azione: "Stick&Cook", Descrizione: "Start with washing, drying and cutting the courgettes into sticks. Pput two tablespoons of olive oil in a pan and heat and cook the sticks for 5 minutes over high heat. Then, salt them, lower the heat and continue cooking for 10 minutes"),
                    Step(Image: "String", Azione: "Beat&Cook", Descrizione: "In the meantime, put the whole eggs in a bowl with the milk and beat with a fork. Then, melt a knob of butter in a non-stick pan and cook the egg mixture. When it’s starting to thicken, move it with a wooden spoon in order to break it"),
                    Step(Image: "String", Azione: "Mix&Eat", Descrizione: "When the eggs are thickened but still creamy, add the sautéed courgettes. Now you can enjoy the scrambled eggs with the hot and creamy freshly made courgettes!")],
            Allergens: [Allergen(Name: "glutenfree", Image: ""),
                        Allergen(Name: "", Image: "")]
        ),
        
        
        Recipe(
            Name: "Potato frittata",
            Description:"A richer version of classic frittata, this dish with simple flavours is appetizing and genuine",
            Image: "frittatadipatate",
            IngredientList: ["Eggs 🥚","Potatoes 🥔", "Parsley 🌿"],
            CookTime: 10,
            PrepTime: 25,
            Steps: [Step(Image: "String", Azione: "Cut&Blanch", Descrizione: "First, chop the parsley with a knife then peel the potatoes and cut them into thin slices. Bring a pot full of water to a boil and then blanch the sliced potatoes for 4-5 minutes"),
                    Step(Image: "String", Azione: "Mix&Cook", Descrizione: "Pour the eggs into a bowl, add the grated cheese, chopped parsley, salt, pepper and mix. Then, drain the potatoes, let them cool and add them to the mixture. In a pan heat a drizzle of seed oil, and once it is hot, pour in the mixture. Cover with the lid and cook over medium heat for 15 minutes."),
                    Step(Image: "String", Azione: "Mix&Eat", Descrizione: "Then, carefully flip the frittata onto the lid by turning the pan. Slide it back into the pan so that the other side is also cooked, lid it again and continue cooking for 5 minutes. After this, the frittata will be ready!")],
            Allergens: [Allergen(Name: "glutenfree", Image: ""),
                        Allergen(Name: "", Image: "")]
        ),
        
        Recipe(
            Name: "Carbonara",
            Description: "It is a dish with popular ingredients and an intense flavor, born in the Eternal City. Let's find out how to make one of the most famous pasta recipes in the world!",
            Image: "carbonara",
            IngredientList: ["Pasta 🍝","Meat 🥩", "Egg 🥚", "Cheese 🧀"],
            CookTime: 10,
            PrepTime: 25,
            Steps: [Step(Image: "carbonarastep1", Azione: "Cook&Cut", Descrizione: "Start by putting a pot of salted water on the burner and cut the guanciale into strips, then put the pieces into a non-stick pan and brown for 15 minutes over medium heat"),
                    Step(Image: "carbonarastep2", Azione: "Cook&Whip", Descrizione: "In the meantime, put spaghetti in boiling water, cook for the time indicated on the package and pour the yolks into a bowl, adding the Pecorino cheese, season with black pepper and whip by hand."),
                    Step(Image: "carbonarastep3", Azione: "Drain&Mix", Descrizione: "Turn off the burner with guanciale. Drain the pasta directly into it and stir it briefly to season it. Remove from heat and pour the mixture of eggs and pecorino cheese into the pan. Mix quickly to combine.Your carbonara is now ready, you can add black pepper and pecorino on top to make it even more appetizing!")],
            Allergens: [Allergen(Name: "lactosefree", Image: "")]
        )
    ]
}

class MyIngredients: ObservableObject{
    @Published var myIngredients = [
        "Cheese 🧀", "Tomato 🍅", "Basil 🌿","Meat 🥩","Eggs 🥚","Zucchini 🥒","Milk 🥛","Pasta 🍝", "Bread 🍞", "Potatoes 🥔", "Oregano 🌿", "Parsley 🌿","Butter 🧈"
    ]
    init(myIngredients: [String] = [
        "Cheese 🧀", "Tomato 🍅", "Basil 🌿","Meat 🥩","Eggs 🥚","Zucchini 🥒","Milk 🥛","Pasta 🍝", "Bread 🍞", "Potatoes 🥔", "Oregano 🌿", "Parsley 🌿","Butter 🧈"
    ]) {
        self.myIngredients = myIngredients
    }
}
