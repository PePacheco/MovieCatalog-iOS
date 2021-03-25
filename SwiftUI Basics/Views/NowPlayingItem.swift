//
//  NowPlayingItem.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 25/03/21.
//

import SwiftUI

struct NowPlayingItem: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            movie.image
                .resizable()
                .frame(width: 140, height: 240)
                .cornerRadius(8)
            Text(movie.Title)
            HStack {
                Image(systemName: "star")
                Text(String(movie.Rate))
            }
            .foregroundColor(.gray)
        }
        .frame(width: 140)
        .padding(.leading, 5)
    }
}

struct NowPlayingItemView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingItem(movie: ModelData().movieNowPlaying[0])
    }
}
