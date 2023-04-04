//
//  CardDeckView.swift
//  Cards
//
//  Created by Benia Morgan-Ware on 4/3/23.
//

import SwiftUI

struct CardDeckView: View {
    var cards: [Card]
    
    var body: some View {
        TabView {
            ForEach(cards) { card in
              CardView(card: card)
          
            }
        }
        .tabViewStyle(.page)
        .background(Color.gray)
    }
}

struct CardDeckView_Previews: PreviewProvider {
    static let cards = [
        Card(font: "What is 7+7?", back: "14"),
    Card(font: "What is the airspeed velocity of an unladen swallow?", back: "African or European?"),
    Card(font: "From what is Cognac made?", back: "Grapes")
    ]
    static var previews: some View {
        CardDeckView(cards: cards)
    }
}
