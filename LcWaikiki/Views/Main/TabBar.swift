//
//  TabBar.swift
//  LcWaikiki
//
//  Created by Esra Fırat on 26.07.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        VStack {
           
            TabView {
                HomeView()
                    .tabItem {
                        Label("Ana Sayfa", systemImage: "house.fill")
                    }
                BasketView()
                    .tabItem {
                        Label("Sepetim", systemImage: "bag")
                    }
                FavoritesView()
                    .tabItem {
                        Label("Favoriler", systemImage: "heart")
                    }
            }
        }
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
