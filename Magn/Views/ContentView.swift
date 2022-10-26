//
//  ContentView.swift
//  Magn
//
//  Created by Valerio Mosca on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText = ""
    @State var searching = false
    
    let myFruits = [
        "Apple 🍏", "Banana 🍌", "Blueberry 🫐", "Strawberry 🍓", "Avocado 🥑", "Cherries 🍒"
    ]
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
                        ForEach(myFruits.filter({ (fruit: String) -> Bool in
                            return fruit.hasPrefix(searchText)
                        }), id: \.self) { fruit in
                            NavigationLink(destination: RelatedRecipies()){
                                Text(fruit)
                            }
                        }
                    }  .listStyle(GroupedListStyle())
                    
                    
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
