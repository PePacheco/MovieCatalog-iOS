//
//  Movie.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 25/03/21.
//

import SwiftUI

struct Movie: Decodable {
    var Title: String
    var Description: String
    var Year: Int
    var Genre: String
    var Rate: Double
    var Duration: String
    var nowPlaying: Bool
    
    var image: Image {
        Image(Title)
    }
}
