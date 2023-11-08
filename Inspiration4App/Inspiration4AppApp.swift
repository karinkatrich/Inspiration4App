//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by Karyna Katrich on 08.11.23.
//

import SwiftUI

@main
struct Inspiration4AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
