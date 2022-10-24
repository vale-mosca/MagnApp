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
                
                HStack(alignment: .top) {
                    
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Text("Let's create something tasty.")
                            .font(.subheadline)
                            .padding(.horizontal)
                        //  .foregroundColor(Color.black)
                        
                    }
                    
                  
                        
                }
                
                SearchBar(searchText: $searchText, searching: $searching)
                
                List {
                    ForEach(myFruits.filter({ (fruit: String) -> Bool in
                        return fruit.hasPrefix(searchText) || searchText == ""
                    }), id: \.self) { fruit in
                        Text(fruit)
                    }
                }
                    .listStyle(GroupedListStyle())
                    .navigationTitle(searching ? "Searching" : "Hello Chef!")
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
                    .gesture(DragGesture()
                                .onChanged({ _ in
                        UIApplication.shared.dismissKeyboard()
                                })
                    )
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

struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.gray)
                .brightness(0.4)
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search...", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(.gray)
            .padding(.leading, 13)
        }
            .frame(height: 40)
            .cornerRadius(13)
            .padding()
    }
}


extension UIApplication {
     func dismissKeyboard() {
         sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
     }
 }
