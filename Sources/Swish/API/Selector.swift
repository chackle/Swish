
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public struct Selector {
  
  let name: String
  let properties: [Property]

  init(name: String, properties: [Property]) {
      self.name = name
      self.properties = properties
   }
}

extension Selector: CSSRepresentable {
  
  var rawValue: String {
      "\(name) { \(properties.map( { $0.rawValue } ).joined(separator: " ")) }"
  }
}
