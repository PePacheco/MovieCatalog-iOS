//
//  NowPlayingRow.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 25/03/21.
//

import SwiftUI

struct NowPlayingRow: View {
    var moviesPlaying: [Movie]
    var body: some View {
        VStack (alignment: .leading, spacing: 15) {
            HStack {
                Text("Now Playing")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer()
                Text("See All")
                    .foregroundColor(.gray)
                    .padding()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(moviesPlaying, id: \.Title) { movie in
                        NowPlayingItem(movie: movie)
                    }
                }
            }
            .frame(height: 250)
        }
    }
}

struct NowPlayingRowView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingRow(moviesPlaying: ModelData().movieNowPlaying)
    }
}
