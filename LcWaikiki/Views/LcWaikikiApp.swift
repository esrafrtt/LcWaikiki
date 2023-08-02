//
//  LcWaikikiApp.swift
//  LcWaikiki
//
//  Created by Esra Fırat on 26.07.2023.
//

import SwiftUI

@main
struct LcWaikikiApp: App {
    @StateObject private var storeModel = StoreModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel)
        }
    }
}
