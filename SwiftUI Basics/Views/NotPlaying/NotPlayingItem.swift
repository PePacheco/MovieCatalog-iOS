//
//  NotPlayingItem.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 25/03/21.
//

import SwiftUI

struct NotPlayingItem: View {
    var movie: Movie
    var body: some View {
        HStack {
            movie.image
                .resizable()
                .frame(width: 120, height: 180)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(movie.Title)
                    .bold()
                    .padding(.bottom, 3)
                Text(movie.Description)
                    .fontWeight(.light)
                    .font(Font.custom("San-Francisco", size: 15.0))
                    .foregroundColor(.gray)
                    .padding(.bottom, 5)
            }
        }
        .frame(height: 180)
    }
}

struct NotPlayingItem_Previews: PreviewProvider {
    static var previews: some View {
        NotPlayingItem(movie: ModelData().movieNotPlaying[1])
    }
}
