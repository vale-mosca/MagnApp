//
//  Utils.swift
//  Magn
//
//  Created by Valerio Mosca on 24/10/22.
//
//  Searchbar, Progressbar, Card struct and Cardview



import Foundation
import SwiftUI

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
                TextField("Search an ingredient", text: $searchText) {
                    startedEditing in
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

struct ProgressBar: View {
    @State private var counter = 0.0
    
    private let minValue = 0.0
    private let maxValue = 100.0
    
    let gradient = Gradient(colors: [.yellow, .orange, .pink])
    
    var body: some View {
        VStack {
            Gauge(value: counter, in: minValue...maxValue) {
                Label("", systemImage: "thermometer.medium")
            } currentValueLabel: {
                Text(Int(counter), format: .number)
                    .foregroundColor(.red)
                
            } minimumValueLabel: {
                Text("0")
                    .foregroundColor(.yellow)
                
            } maximumValueLabel: {
                Text("100")
                    .foregroundColor(.pink)
                
            }
            .tint(gradient)
            
            //Slider(value: $fahrenheit, in: minValue...maxValue)
        }
        .gaugeStyle(.accessoryCircular)
        .padding()
    }
}



import SwiftUI

struct Card {
    let imagerecipe: String
    let titleRecipe: String
    let numIngredients: Int
    let prepTime: Int
    let cookTime: Int
    //let allergies: String
    
    init(imagerecipe: String, titleRecipe: String, numIngredients: Int, prepTime: Int, cookTime: Int) {
        self.imagerecipe = imagerecipe
        self.titleRecipe = titleRecipe
        self.numIngredients = numIngredients
        self.prepTime = prepTime
        self.cookTime = cookTime
    }
}

struct CardView: View {
    //EXAMPLE
    let card: Card
    
    var body: some View {
        ZStack{
            //FRAME THAT CONTAINS RECIPE INFOS
            RoundedRectangle(cornerRadius: 24, style: .continuous).fill(.white)
                .shadow(radius: 10)
            HStack{
                Image(card.imagerecipe)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.leading, -10)
                    .frame(width: 100.0)
                Spacer()
                
                VStack(alignment: .leading, spacing: 10){
                    Spacer()
                    VStack(alignment: .leading, spacing: 4){
                        Text(card.titleRecipe)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .bold()
                            .multilineTextAlignment(.leading).foregroundColor(Color.black)
                        
                        Text("\(card.numIngredients) ingredients").font(.system(size: 14)).foregroundColor(Color.black)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 4){
                        HStack{
                            Text("Prep:").font(.system(size: 12))
                                .fontWeight(.bold).foregroundColor(Color.black)
                            
                            Text("\(card.prepTime) min").font(.system(size: 12)).foregroundColor(Color.black)
                        }
                        
                        VStack(alignment: .leading, spacing: 4){
                            HStack{
                                Text("Cook:").font(.system(size: 12))
                                    .fontWeight(.bold).foregroundColor(Color.black)
                                
                                Text("\(card.cookTime) min").font(.system(size: 12)).foregroundColor(Color.black)
                            }
                        }
                        
                        //                        HStack{
                        //                            Image(card.allergies)
                        //                                .resizable()
                        //                                .aspectRatio(contentMode: .fit)
                        //                            Image(card.allergies)
                        //                                .resizable()
                        //                                .aspectRatio(contentMode: .fit)
                        //                        }.padding(.leading, -10 )
                    }
                    
                    Spacer()
                }.padding(.trailing, 50)
            }.cornerRadius(25)
        }
        .frame(width: 358, height: 200)
    }
}


