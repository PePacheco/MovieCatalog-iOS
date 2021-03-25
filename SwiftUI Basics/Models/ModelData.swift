//
//  ModelData.swift
//  SwiftUI Basics
//
//  Created by Pedro Gomes Rubbo Pacheco on 25/03/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var movies: [Movie] = load("movies.json")
    
    var movieNowPlaying: [Movie] {
        movies.filter { $0.nowPlaying }
    }
    
    var movieNotPlaying: [Movie] {
        movies.filter { !$0.nowPlaying }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
