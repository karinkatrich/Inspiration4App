//
//  EquipmentArea.swift
//  Inspiration4App
//
//  Created by Karyna Katrich on 08.11.23.
//

import SwiftUI

struct EquipmentArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow

    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dissmissImmersiveSpace

    var body: some View {
        @Bindable var model = model

        HStack {
            VStack {
                Image("equipment-capsule")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)

                Toogle(model.isShowingRocketCapsule ? "Hide Rocket Capsule (Volumetrich)" : "Show Rocket Capsule (Volumetric)", isOn: $model.isShowingRocketCapsule)
                    .onChange(of: model.isShowingRocketCapsule) { _, isShowing in
                        if isShowing {
                            // open volumetric
                        } else {
                            // dismiss
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()

            VStack {
                Image("equipment-fullrocket")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)

                Toogle(model.isShowingFullRocket ? "Hide Full Rocket (Full Immersed)" : "Show Full Rocket (Full Immersed)", isOn: $model.isShowingRocketCapsule)
                    .onChange(of: model.isShowingFullRocket) { _, isShowing in
                        if isShowing {
                            // open immersed
                        } else {
                            // dismiss
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()
        }
    }
}

#Preview {
    EquipmentArea()
        .environment(ViewModel())
}
