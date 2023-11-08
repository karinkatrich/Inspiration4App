//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by Karyna Katrich on 08.11.23.
//

import SwiftUI

@main
struct Inspiration4App: App {
    @State private var model = ViewModel()
    var body: some Scene {
        WindowGroup {
            Areas()
        }

        WindowGroup(id: "CapsuleRealityArea") {
            CapsuleRealityArea()
                .environment(.model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)

        ImmersiveSpace(id: "FullRocketRealityArea") {
            FullRocketRealityArea()
                .environment(.model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
