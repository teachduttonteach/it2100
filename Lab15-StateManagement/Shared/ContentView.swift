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
                Button(action: {
                    if counter > 0 {
                        self.counter -= 1
                    }
                }, label: {
                    Text("Subtract")
                }).padding(20)
            }
            HStack {
                Text("Change name: ")
                TextField(
                    "First name",
                    text: $firstName)
                .padding(12)
                .border(Color.red, width: 2)
            }.padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
