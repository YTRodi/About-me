//
//  FavoritesView.swift
//  About Me app
//
//  Created by Yago Rodi on 21/08/2022.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            Text("Hobbies")
                .font(.title2)
            HStack {
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                }
                .padding()
            }
            .padding()
            
            Text("Foods")
                .font(.title2)
            HStack(spacing: 60) {
                ForEach(information.foods, id: \.self) { food in
                    Text(food)
                        .font(.system(size: 40))
                }
            }
            .padding()
            
            Text("Favorite Colors")
                .font(.title2)
            HStack(spacing: 30) {
                ForEach(information.colors, id: \.self) { color in
                    color
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                }
            }
            .padding()
            
        }
  
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
