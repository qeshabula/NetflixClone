//
//  Tv.swift
//  NetflixClone
//
//  Created by Bula on 1/7/23.
//

import Foundation

struct TredingTvResponse: Codable {
    let results: [Tv]
}

struct Tv: Codable {
    let id: Int
    let media_type: String?
    let original_language: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
