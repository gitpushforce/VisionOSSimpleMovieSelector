//
//  MovieRow.swift
//  firstapp
//
//  Created by masaki nakamura on 2024/07/14.
//

import SwiftUI

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movie.title)
            Text(movie.director).font(.subheadline)
                .foregroundStyle(.secondary)
        }.tag(movie)
    }
}

#Preview {
    MovieRow(movie: .test)
}
