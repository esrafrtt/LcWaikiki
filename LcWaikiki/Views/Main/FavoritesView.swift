//
//  ContentView.swift
//  LcWaikiki
//
//  Created by Esra Fırat on 26.07.2023.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        
        NavigationView {
            Text("Henüz favorilere ürün eklemediniz.")
            .padding()
            .navigationTitle("Favoriler")
        }
     
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
