//
//  MovieCell.swift
//  YusMuvis
//
//  Created by Wisnu Sanjaya on 19/04/20.
//  Copyright © 2020 Wisnu Sanjaya. All rights reserved.
//

import SwiftUI

struct MovieCell: View {
    
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(movie.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1 )
                .frame(width: CGFloat(100), height: CGFloat(120))
            VStack(alignment: .leading, spacing: CGFloat(8)) {
                Text(movie.title)
                .font(.custom("Avenir Black", size: 18))
                Text(movie.description)
                .font(.custom("Avenir Medium", size: 14))
                .lineLimit(2)
                Text(movie.rating)
                .font(.custom("Avenir Medium", size: 14))
            }
        }
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(movie: HomeViewModel().movies[0])
    }
}
