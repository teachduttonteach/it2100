//
//  ContentView.swift
//  Shared
//
//  Created by John Dutton on 5/1/21.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    @State var firstName: String = "John"
    
    var body: some View {
        VStack {
            Text("\(firstName), your counter is now at: ")
            Text(String(counter))
                .font(.largeTitle)
            HStack {
                Button(action: {
                    self.counter += 1
                }, label: {
                    Text("Add")
            }).padding(20)
                .background(RadialGradient(gradient: Gradient(colors: [Color.green, Color.white]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 70))
                .foregroundColor(.white)
                .cornerRadius(40)

                Button(action: {
                    self.counter -= 1
                }, label: {
                    Text("Subtract")
                }).padding(20)
                .disabled(counter == 0)
                .background(RadialGradient(gradient: Gradient(colors: [Color.green, Color.white]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 70))
                .foregroundColor(.white)
                .cornerRadius(40)
            }
            HStack {
                Text("Change name: ")
                TextField(
                    "First name",
                    text: $firstName)
                .padding(12)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }.padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
