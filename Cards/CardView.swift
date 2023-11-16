//
//  CardView.swift
//  Cards
//
//  Created by Benia Morgan-Ware on 4/2/23.
//

import SwiftUI

struct CardView: View {
    var card: Card
    @State var isBackVisible = false
    
    var degrees: Double  {
        isBackVisible ? 180 : 0
    }

    var body: some View {

            ZStack(alignment: .topLeading) {
                Group {
                    Text(card.back)
                        .scaleEffect(x: -1)
                        .opacity(isBackVisible ? 1 : 0)
                
                    
                    Text(card.font)
                        .opacity(isBackVisible ? 0 : 1)
                }
                .font(.system(size: 24))
                .bold()
                .multilineTextAlignment(.center)

                
                Button {
                    withAnimation {
                        isBackVisible.toggle()
                    }
                } label: {
                    Image(systemName: "arrow.left.arrow.right.circle.fill")
                        .font(.system(size: 36))
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity,
                       alignment: .bottomTrailing)
            }
            .padding()
            .aspectRatio(CGSize(width: 4, height: 3), contentMode: .fit)
            .frame(width: 300, height: 225)
            .background(isBackVisible ? .indigo : .cyan)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
            .rotation3DEffect(
                .degrees(degrees),
                axis: (x: 0, y: 1.0, z: 0))
    }
}

struct CardView_Previews: PreviewProvider {
    static let cardPreview = [
    Card(font: "What is 7+7?", back: "14"),
    Card(font: "What is the airspeed velocity of an unladen swallow?", back: "African or European"),
    Card(font: "From what is cognac made?", back: "Grapes")
    ]
    static var previews: some View {
        ForEach(cardPreview) { card in
            CardView(card: card)
        }
    }
}
