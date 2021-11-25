//
//  ContentView.swift
//  Learn By Doing
//
//  Created by marco rodriguez on 25/11/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Content
    var body: some View {
        CardView()
    }
}

// MARK: - PReview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
