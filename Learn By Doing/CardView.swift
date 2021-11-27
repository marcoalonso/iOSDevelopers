//
//  CardView.swift
//  Learn By Doing
//
//  Created by marco rodriguez on 25/11/21.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    
    
    var card: Card
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y: moveDownward ? -220 : -300)
            
            Button(action: {
                print("Click")
                
                playSound(sound: "sound-chime", type: "mp3")
            }) {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    .accentColor(Color.white)
                    
                    Image(systemName: "captions.bubble.fill")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }//HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                .background(LinearGradient(gradient:Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                //.cornerRadius(12)
                .clipShape(Capsule())
                .shadow(color: Color("ColorShape"), radius: 6, x: 0, y: 3)
                
            }
            .offset(y: moveUpward ? 180 : 300)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.linear(duration: 1.4)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.9)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }//onAppear
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[6])
            .previewLayout(.sizeThatFits)
    }
}
