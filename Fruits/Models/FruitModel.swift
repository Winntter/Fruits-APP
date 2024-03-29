//  FruitModel.swift
//  Fruits

import SwiftUI

// Creating a base SwiftUI variables to app!

struct Fruit: Identifiable {
  let id: UUID = UUID()
  let title: String
  let headline: String
  let image: String
  let gradientColors: [Color]
  let description: String
  let nutrition: [String]
}
