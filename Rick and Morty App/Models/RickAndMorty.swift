//
//  RickAndMorty.swift
//  Rick and Morty App
//
//  Created by Алексей Попов on 26.03.2024.
//

import Foundation

struct RickAndMorty: Decodable {
    let info: Info
}

struct Info: Decodable {
    let pages: Int
    let next: URL //?
    let prev: URL //?
}

struct Character: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let origin: Location
    let location: Location
    let image: URL
    let episode: [URL]
    let url: String
    
    var description: String {
        """
    Name: \(name)
    Status: \(status)
    Species: \(species)
    Gender: \(gender)
    Origin: \(origin.name)
    Location: \(location.name)
    """
    }
}

struct Location: Decodable {
    let name: String
}

//struct Episode: Decodable {
struct Episode {
    let name: String
    let date: String
    let episode: String
    let characters: [URL]
    
    var description: String {
        """
    Title: \(name)
    Date: \(date)
    """
    }
    
    enum CodingKeys: String, CodingKey {
        case name, episode, characters
        case data = "air_date"
    }
}
