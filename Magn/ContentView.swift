//
//  ContentView.swift
//  Magn
//
//  Created by Valerio Mosca on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Image(systemName:"profile.fill")
            
            Text("Hello Chef!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
            Text("Let's create something tasty.")
                .font(.subheadline)
                .foregroundColor(Color.black)
            
            Text("Suggested")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
            Text("Prova")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
            List {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
            .background(Color(red: 242/255, green: 241/255, blue: 246/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
