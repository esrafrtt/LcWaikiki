//
//  ContentView.swift
//  LcWaikiki
//
//  Created by Esra Fırat on 26.07.2023.
//

import SwiftUI

struct BasketView: View {
    var body: some View {
        
        NavigationView {
            Text("Sepetim")
        }
    
        .navigationViewStyle(.stack)  }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
