//
//  ContentView.swift
//  Cards
//
//  Created by Benia Morgan-Ware on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var cards: [Card] = [
    Card(font: "What is 7 + 7?", back: "14"),
    Card(font: "What is the airspeed velocity of an unladen swallow?", back: "African or European"),
    Card(font: "From what is cognac made?", back: "Grapes")
    ]
    
    var body: some View {
        
       CardDeckView(cards: cards)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static let cards = [
        Card(font: "What is 7+7?", back: "14"),
    Card(font: "What is the airspeed velocity of an unladen swallow?", back: "African or European?"),
    Card(font: "From what is Cognac made?", back: "Grapes")
    ]
    static var previews: some View {
        CardDeckView(cards: cards)
      
    }
}
