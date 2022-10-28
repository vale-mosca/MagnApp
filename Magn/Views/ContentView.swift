//
//  ContentView.swift
//  Magn
//
//  Created by Valerio Mosca on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var ingredients = MyIngredients()
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        
        NavigationView(){
            VStack(alignment: .leading) {
                
                
                VStack(){
                    HStack{
                        Text("Let's create something tasty.")
                            .font(.subheadline)
                            .padding(.horizontal,20)
                        //  .foregroundColor(Color.black)
                        Spacer()
                        Image("chef")
                            .padding(.horizontal,30)
                            .padding(.vertical,-30)
                    }
                    SearchBar(searchText: $searchText, searching: $searching)
                }
                
                if(searchText == ""){
                    Home()
                } else{
                    List {
                        ForEach(
                            ingredients.myIngredients.filter({ (ingredient: String) -> Bool in
                            return ingredient.hasPrefix(searchText)
                        })
                        , id: \.self) { ingredient in
                            NavigationLink(destination: RelatedRecipies(selectedIngredient: ingredient)){
                                Text(ingredient)
                            }
                        }
                    }
                    .listStyle(GroupedListStyle())
                    
                    
                }
                
                
            } .navigationTitle(searching ? "Searching" : "Hello Chef!")
                .toolbar {
                    if searching {
                        Button("Cancel") {
                            searchText = ""
                            withAnimation {
                                searching = false
                                UIApplication.shared.dismissKeyboard()
                            }
                        }
                    }
                }
        }
        .frame(maxWidth: .infinity)
        .background(Color("AccentColor"))
    }
}


extension View {
    var previewedInAllColorSchemes: some View {
        ForEach(ColorScheme.allCases, id: \.self, content: preferredColorScheme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewedInAllColorSchemes
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
