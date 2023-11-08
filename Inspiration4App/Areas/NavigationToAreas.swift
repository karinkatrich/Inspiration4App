//
//  NavigationToAreas.swift
//  Inspiration4App
//
//  Created by Karyna Katrich on 08.11.23.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            Text("Welcome To The Inspiration 4 Misiion by SpaceX")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 250)

            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationToAreas()
}
