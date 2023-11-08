//
//  Crew.swift
//  Inspiration4App
//
//  Created by Karyna Katrich on 08.11.23.
//

import Foundation

enum Crew: String, Identifiable, CaseIterable, Equatable {
    case jared, hayley, chris, sian
    var id: Self { self }

    var fullName: String {
        switch self {
        case .jared:
            "Jared Isaacman"
        case .hayley:
            "Hayley Arceneaux"
        case .chris:
            "Chris Sembroski"
        case .sian:
            "Dr. Sian Proctor"
        }
    }

    var about: String {
        switch self {
        case .jared:
            "Jared Isaacman is the founder and CEO of Shift4 Payments (NYSE: FOUR), the leader in integrated payment processing solutions."
        case .hayley:
            "When Hayley was 10 years old, one of her knees began to ache."
        case .chris:
            "Chris Sembroski grew up with a natural curiosity about outer space."
        case .sian:
            "Dr. Sian Proctor is a geoscientist, explorer, and science communication specialist with a lifelong passion for space exploration."
        }
    }
}
