//
//  FullRocketRealityArea.swift
//  Inspiration4App
//
//  Created by Karyna Katrich on 08.11.23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else {
                fatalError("Unable to load scene model")
            }
            content.add(entity)
        }
    }
}

#Preview {
    FullRocketRealityArea()
}
