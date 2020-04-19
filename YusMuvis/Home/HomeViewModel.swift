//
//  HomeViewModel.swift
//  YusMuvis
//
//  Created by Wisnu Sanjaya on 19/04/20.
//  Copyright © 2020 Wisnu Sanjaya. All rights reserved.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    var title: String
    var image: String
    var rating: String
    var duration: String
    var description: String
}

class HomeViewModel {
    
    let movies: [Movie] = [
        Movie(title: "Valley Girl", image: "valleygirl", rating: "7.0", duration: "120", description: "Set to a new wave '80s soundtrack, a pair of young lovers from different backgrounds defy their parents and friends to stay together. A musical adaptation of the 1983 film."),
        Movie(title: "Parasite", image: "parasite", rating: "8.6", duration: "2h 12min", description: "A poor family, the Kims, con their way into becoming the servants of a rich family, the Parks. But their easy life gets complicated when their deception is threatened with exposure."),
        Movie(title: "Money Heist", image: "moneyheist", rating: "8.5", duration: "1h 10min", description: "An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain."),
        Movie(title: "Joker", image: "joker", rating: "8.5", duration: "2h 2min", description: "In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker."),
        Movie(title: "The Gentlemen", image: "gentlemen", rating: "8.0", duration: "1h 53min", description: "An American expat tries to sell off his highly profitable marijuana empire in London, triggering plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.")
    ]
}
