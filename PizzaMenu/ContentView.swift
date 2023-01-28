//
//  ContentView.swift
//  PizzaMenu
//
//  Created by Elin A on 2023-01-28.
//
import SwiftUI

struct ContentView: View {
    @State var title: String = "Pizza Menu, press a pizza "

    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Margherita") {
                self.title = "Tomatsås, ost"
                
            }
            
            Button(action: {
                    self.title = "Tomatsås, ost, champinjoner"
            }, label: {
                Text("Funghi")
            })

            Button(action: {
                    self.title = "Tomatsås, ost, champinjoner, skinka"
            }, label: {
                Text("Capricciosa")
            })
            
            Button(action: {
                    self.title = "Press the name of the pizza to see the ingredients"
            }, label: {
                Text("Refresh")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
