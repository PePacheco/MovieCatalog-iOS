//
//  MovieDetail.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 26/03/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    movie.image
                        .resizable()
                        .frame(width: 160, height: 240)
                        .cornerRadius(8.0)
                    VStack(spacing: 10) {
                        Spacer()
                        Text(movie.Title)
                            .font(.system(size: 22, weight: .bold))
                        Text(movie.Genre)
                            .foregroundColor(.gray)
                        HStack {
                            Image(systemName: "star")
                            Text(String(movie.Rate))
                        }
                        .foregroundColor(.gray)
                    }
                    .padding(.bottom)
                    .frame(width: 200, height: 240)
                }
                Text("Overview")
                    .fontWeight(.bold)
                    .padding(.top, 20)
                Text(movie.Description)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .navigationBarTitle(Text("Movie Details"), displayMode: .inline)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: ModelData().movieNowPlaying[0])
    }
}
