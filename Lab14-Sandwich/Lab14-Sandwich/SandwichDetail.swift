//
//  SandwichDetail.swift
//  Lab14-Sandwich
//
//  Created by John Dutton on 4/24/21.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps())
                .foregroundColor(Color.yellow)
                .background(Color.red)
                .transition(.move(edge: .bottom))

            }
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)

    }
    
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SandwichDetail(sandwich: testData[2])
        }
        NavigationView {
            SandwichDetail(sandwich: testData[3])
        }
    }
}
