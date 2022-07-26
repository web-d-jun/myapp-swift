//
//  FavoritesView.swift
//  myapp
//
//  Created by 조준영 on 2022/07/24.
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
                ForEach(information.hobbies,    id: \.self) {
                    hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80,
                        maxHeight: 80)
                }
            }
            
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}

