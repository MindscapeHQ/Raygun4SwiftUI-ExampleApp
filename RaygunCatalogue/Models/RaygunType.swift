//
//  RaygunType.swift
//  RaygunCatalogue
//
//  Created by Nik Wakelin on 28/05/2024.
//

import Foundation

struct RaygunType {
  
  var uniqueID : Int
  var name: String
  
  var imageName: String
  
  static func all() -> [RaygunType] {
    return [
      RaygunType(uniqueID: 1, name: "Heat", imageName: "heat"),
      RaygunType(uniqueID: 2, name: "Shrink", imageName: "shrink"),
      RaygunType(uniqueID: 3, name: "Zap", imageName: "zap"),
      RaygunType(uniqueID: 4, name: "Pow", imageName: "pow")
    ]
  }
  
}
