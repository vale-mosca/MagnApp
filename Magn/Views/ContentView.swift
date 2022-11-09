//
//  ContentView.swift
//  Magn
//
//  Created by São Pauloa on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var ingredients = MyIngredients()
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        NavigationView(){
            VStack(alignment: .leading) {
                HStack{
                    Text("Let's create something tasty.")
                        .font(.subheadline)
                        .padding([.leading, .bottom], 18)
                    
                    Spacer()
                    Image("recipebook")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.trailing, 10)
                        .padding(.vertical,-60)
                }
                SearchBar(searchText: $searchText, searching: $searching)
                
                
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
        //.frame(maxWidth: .infinity)
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
