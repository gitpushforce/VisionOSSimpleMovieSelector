//
//  MovieVM.swift
//  firstapp
//
//  Created by masaki nakamura on 2024/07/14.
//

import SwiftUI

@Observable
final class MoviesVM {
    let interactor: Interactor
    var movies: [Movie]
    
    init(interactor: Interactor = DataInteractor()) {
        self.interactor = interactor
        do {
            movies = try interactor.loadMovie()
        } catch {
            movies = []
        }
    }
}
