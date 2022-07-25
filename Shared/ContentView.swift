//
//  ContentView.swift
//  Shared
//
//  Created by 조준영 on 2022/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label("Home", systemImage: "person")
            }
            
            StoryView().tabItem {
                Label("Story", systemImage: "book")
            }
            
            FavoritesView().tabItem {
                Label("Favorites", systemImage: "star")
            }
                        
            FunFactsView().tabItem {
                Label("Fun Facts", systemImage: "hand.thumbsup")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
