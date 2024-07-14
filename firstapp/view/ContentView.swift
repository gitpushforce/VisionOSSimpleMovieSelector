//
//  ContentView.swift
//  firstapp
//
//  Created by masaki nakamura on 2024/07/12.
//

import SwiftUI

struct ContentView: View {
    @State var moviesVM = MoviesVM()
    @State var selection: Movie?
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                ForEach (moviesVM.movies) { movie in
                    MovieRow(movie: movie)
                }
            }
            
        } detail: {
            if let selection {
                MovieDetail(movie: selection)
            } else {
                ContentUnavailableView("movie not selected", systemImage: "popcorn",
                    description: Text("Please select a movie"))
            }
        }
    }
}


#Preview(windowStyle: .automatic) {
    ContentView(moviesVM: MoviesVM(interactor: DataInteractorTest()))
}


