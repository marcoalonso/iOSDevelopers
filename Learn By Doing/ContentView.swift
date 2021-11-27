//
//  ContentView.swift
//  Learn By Doing
//
//  Created by marco rodriguez on 25/11/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    var cards: [Card] = cardData
    
    // MARK: - Content
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }//HStack
            .padding(20)
        }//Scroll
    }
}

// MARK: - PReview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
            .previewDevice("iPhone 13")
    }
}
