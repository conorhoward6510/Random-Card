//
//  ContentView.swift
//  Random-Card
//
//  Created by Conor Howard on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentCard = Card()
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(currentCard.cardImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Button {
                currentCard = Card()
            } label: {
                Text("Draw Card")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding()
            .padding(.horizontal, 75)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Capsule())
            
            Spacer()

        }
        .padding(.horizontal, 40)
    }
    
}

struct Card {
    
    let cardNumber = Int.random(in: 0..<51)
    var cardImageName: String {
        return "\(getCardValue())_of_\(getCardSuit())"
    }
    
    func getCardSuit() -> String {
        
        switch cardNumber % 4 {
        case 0:
            return "clubs"
        case 1:
            return "diamonds"
        case 2:
            return "hearts"
        case 3:
            return "spades"
        default:
            fatalError()
        }
        
    }
    
    func getCardValue() -> String {
        
        let value = cardNumber % 13
        
        switch value {
        case 0:
            return "ace"
        case 1...9:
            return String(value + 1)
        case 10:
            return "jack"
        case 11:
            return "queen"
        case 12:
            return "king"
        default:
            fatalError()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
