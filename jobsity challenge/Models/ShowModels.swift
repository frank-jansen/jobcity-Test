//
//  ShowModels.swift
//  jobsity challenge
//
//  Created by Frank Jansen on 29/11/22.
//

import Foundation

struct JsonData: Codable {
    let score: Float
    let show: [Show]
}

struct Show: Codable, Identifiable {
    let id: Int
    let url: String?
    let name: String
    let type: String?
    let language: String?
    let genres: [String]
    let status: String?
    let runtime: Int?
    let averageRuntime: Int?
    let premiered: Date?
    let ended: Date?
    let officialSite: String?
    let schedule: Shedule?
    let rating: Rating?
    let weight: Int?
    let network: Network?
    let webChannel: String?
    let dvdCountry: String?
    let externals: Externals?
    let image: ImaGe?
    let summary: String?
    let updated: Int?
    let _links: Links?
    // usar extension? preguntar
    let season: Int?
    let number: Int?
    let airdate: Date?
    let airtime: Date?
    let airstamp: Date?
}
struct Shedule: Codable {
    let time: Date?
    let days: [String]?
}
struct Rating: Codable {
    let average: String?
}
struct Network: Codable {
    let id: Int?
    let name: String?
    let country: Country?
    let officialSite: String?
}
struct Country: Codable {
    let name: String?
    let code: String?
    let timezone: String?
}
struct Externals: Codable {
    let tvrage: String?
    let thetvdb: Int?
    let imdb: String?
}
struct ImaGe: Codable {
    let medium: String?
    let original: String?
}
struct Links: Codable {
    let currentEpisode : Reference?
    let previousepisode: Previousepisode?
    
    enum CodingKeys: String, CodingKey {
        case currentEpisode = "self"
        case previousepisode
    }
}
struct Reference: Codable {
    let href: String?
}
struct Previousepisode: Codable {
    let href: String?
}
