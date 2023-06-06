//
//  AppetizerModel.swift
//  AppetizersMMVMSwiftUIDemo
//
//  Created by Marco Alonso Rodriguez on 05/06/23.
//

import Foundation

struct AppetizerResponse: Decodable {
    let request: [AppetizerModel]
}

struct AppetizerModel: Identifiable, Decodable {
    let id: Int
    let name: String
    let price: Double
    let imageURL: String
    let description: String
    let calories: Int
    let carbs: Int
    let protein: Int
}


