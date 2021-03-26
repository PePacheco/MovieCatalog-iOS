//
//  NotPlayingRow.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 25/03/21.
//

import SwiftUI

struct NotPlayingRow: View {
    var movies: [Movie]
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10) {
                Text("Popular Movies")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                ForEach(movies, id: \.Title) { movie in
                    NavigationLink(destination: MovieDetail(movie: movie)) {
                        NotPlayingItem(movie: movie)
                    }
                }
            }
        }
    }
}

struct NotPlayingRow_Previews: PreviewProvider {
    static var previews: some View {
        NotPlayingRow(movies: ModelData().movieNotPlaying)
    }
}
