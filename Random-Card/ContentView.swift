//
//  ContentView.swift
//  Random-Card
//
//  Created by Conor Howard on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentCard: PlayingCard?
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(currentCard?.cardImageName ?? "CardBack")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Button {
                currentCard = PlayingCard()
            } label: {
                Text("Draw Card")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal, 75)
                    .background(Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            
            Spacer()

        }
        .padding(.horizontal, 40)
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
