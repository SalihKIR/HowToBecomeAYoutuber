//
//  YouTubeModel.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 24.05.2022.
//
import Foundation
// MARK: - Lesson
struct Lesson: Codable {
    let data: [Datum]
    let marketlinki: String
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int
    let icon: String
    let baslik, icerik: String
}
