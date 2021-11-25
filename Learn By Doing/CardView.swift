//
//  CardView.swift
//  Learn By Doing
//
//  Created by marco rodriguez on 25/11/21.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    var gradient: [Color] = [Color("Color01"),Color("Color02")]
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image("developer-no7")
            
            VStack {
                Text("Marco Alonso")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("iOS Developer")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y: -240)
            
            Button(action: {
                print("Click")
            }) {
                HStack {
                    Text("Contact".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    .accentColor(Color.white)
                    
                    Image(systemName: "captions.bubble.fill")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }//HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                .background(LinearGradient(gradient:Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                //.cornerRadius(12)
                .clipShape(Capsule())
                .shadow(color: Color("ColorShape"), radius: 6, x: 0, y: 3)
                
            }
            .offset(y: 180)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
