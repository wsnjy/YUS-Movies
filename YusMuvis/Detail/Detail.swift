//
//  Detail.swift
//  YusMuvis
//
//  Created by Wisnu Sanjaya on 20/04/20.
//  Copyright © 2020 Wisnu Sanjaya. All rights reserved.
//

import SwiftUI

struct Detail: View {
    
    let viewModel = HomeViewModel()
    let height = UIScreen.main.bounds.height * 0.5
    
    var body: some View {
        ZStack {
            VStack {
                Image(viewModel.movies[0].image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: height)
                Spacer()
            }
            VStack{
                Spacer()
                VStack(alignment: .leading, spacing: 16){
                    Text(viewModel.movies[0].title)
                    .font(.custom("Avenir Black", size: 32))
                    HStack {
                        Image("imdb")
                        Text(viewModel.movies[0].rating)
                        Image(systemName: "timer")
                        .padding(.leading)
                        Text(viewModel.movies[0].duration)
                        Spacer()
                    }.padding(.top, -16)
                    Text("Description")
                    .font(.custom("Avenir Heavy", size: 18))
                    Text(viewModel.movies[0].description)
                    .font(.custom("Avenir Light", size: 18))
                    .foregroundColor(.secondary)
                    Text("Cast")
                    .font(.custom("Avenir Heavy", size: 18))
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 32){
                            ForEach(1...10, id: \.self) {
                                Image("\($0)")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .cornerRadius(16)
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.top, 32)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity)
                .frame(height: height + 50)
                .background(Color.white)
                .cornerRadius(24)
                
            }
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
