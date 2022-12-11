//
//  CastModels.swift
//  jobsity challenge
//
//  Created by Frank Jansen on 30/11/22.
//

import Foundation

struct CastJsonData: Codable {
    var cast: [Cast]
}

struct Cast: Codable {
    let person: Person
    let character: Characters
}
struct Person: Codable {
    let id: Int
    let url: String
    let name: String
    let country: Country
    let birthday: Date
    let deathday: Date
    let gender: String
    let image: ImaGe
    let updated: Int
    let _links: Links
}
struct Characters: Codable {
    let id: Int
    let url: String
    let name: String
    let image: ImaGe
    let _links: Links
    let voice: Bool
}
