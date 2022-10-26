//
//  CardView.swift
//  Magn
//
//  Created by Jonatas Brisotti on 24/10/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white)
            
            VStack {
                Text("Title")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Text("Ingredients")
                    .font(.title)
                    .foregroundColor(.gray)
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 450, height: 250)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewedInAllColorSchemes
    }
}
