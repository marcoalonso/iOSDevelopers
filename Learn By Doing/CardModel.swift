//
//  CardModel.swift
//  Learn By Doing
//
//  Created by marco rodriguez on 27/11/21.
//

import SwiftUI

// MARK: - Card Model

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message:  String
    var gradientColors: [Color]
}
