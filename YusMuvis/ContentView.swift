//
//  ContentView.swift
//  YusMuvis
//
//  Created by Wisnu Sanjaya on 19/04/20.
//  Copyright © 2020 Wisnu Sanjaya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading){
                HeaderTitle()
                ScrollViewList()
                UpcomingList()
                MovieList()
                Spacer()
            }
        }
        .padding()

    }
}

struct HeaderTitle: View {
    var body: some View {
        HStack{
            Text("YUS MOVIES")
                .font(.system(size: 22, weight: .bold))
            Spacer()
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .renderingMode(.original)
            }
            Button(action: {}) {
                Image(systemName: "arrow.up.arrow.down")
                    .renderingMode(.original)
            }
        }
    }
}

struct ScrollViewList: View {
    
    let tabTitle = ["Recommended", "Web Series", "Top IMDB", "Most Favorite", "Recently Release"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabTitle, id: \.self) { item in
                    Button(action: actionButton) {
                       Text(item)
                        .foregroundColor(.white)
                    }
                    .padding(12)
                    .background(Color(red: 207/255, green: 53/255, blue: 63/255))
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.1), radius: 20, x: 1, y: 1)
                }
            }
        }
        .padding(.top, 16)
        .padding(.bottom, 16)
    }
    
}

func actionButton() {
    print("action button")
}

struct UpcomingList: View {
    
    let viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("UPCOMING MOVIES")
            .font(.custom("Avenir-Heavy", size: 22))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.movies) { movie in
                        GeometryReader { geometry in
                            Image(movie.image)
                            .resizable()
                            .cornerRadius(16)
                                .shadow(color: Color.black.opacity(0.1), radius: 8, x: 1, y: 1)
                            .padding(.trailing, 16)
                            .rotation3DEffect(Angle(degrees:
                                Double(geometry.frame(in: .global).minX - 30) / -20
                            ), axis: (x: 0, y: 10, z: 0))
                        }
                        .frame(width: 300, height: 400)
                    }
                }
            }
            Text("Valley Girl")
                .font(.custom("Avenir-Heavy", size: 18))
            Text("Drama, Comedy")
            .font(.custom("Avenir Medium", size: 14))
                .foregroundColor(Color.secondary)
        }
    }
}

struct MovieList: View {
    
    let viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("In Theater Now")
            .font(.custom("Avenir-Heavy", size: 22))
            VStack {
                ForEach(viewModel.movies) { movie in
                    MovieCell(movie: movie)
                }
            }
        }.padding(.top, 16)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
