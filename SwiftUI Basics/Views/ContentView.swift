//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                HStack(alignment: .center) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    Text("Search")
                        .foregroundColor(.gray)
                    Spacer()
                }
                .frame(width: 385, height: 50)
                .background(Color(UIColor.lightGray))
                .opacity(0.5)
                .cornerRadius(8)
                
                NowPlayingRow(moviesPlaying: modelData.movieNowPlaying)
                    .padding(.bottom, 30)
                
                NotPlayingRow(movies: modelData.movieNotPlaying)
                    .padding(.top, 30)
            }
            .navigationTitle("MovieDB")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
