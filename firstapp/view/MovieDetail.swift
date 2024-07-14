//
//  MovieDetail.swift
//  firstapp
//
//  Created by masaki nakamura on 2024/07/14.
//

import SwiftUI

struct MovieDetail: View {
    let movie: Movie
    var body: some View {
        ScrollView {
            HStack(alignment: .top) {
                AsyncImage(url: movie.poster) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } placeholder: {
                    Image(systemName: "popcorn")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: 150, height: 250)
                        .glassBackgroundEffect(in:
                            RoundedRectangle(cornerRadius: 10)
                        )
                }
                
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.title)
                        .bold()
                    Text(movie.director)
                    Text(movie.genres)
                        .font(.subheadline)
                    Text(movie.actorsStr)
                        .font(.headline)
                        .padding(.top)
                    Text(movie.overview)
                        .padding(.top)
                    Text("Duration: \(movie.runtime) min.")
                        .padding(.top)
                        .bold()
                }.padding(.leading)
            }.padding()
        }
        // the screen cannot scroll down unless the size of the content is bigger than the view
        .scrollBounceBehavior(.basedOnSize)
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MovieDetail(movie: .test)
}
