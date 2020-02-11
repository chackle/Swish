
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 


import Foundation

public struct Property {
  
  let name: String
  let values: [CSSRepresentable]
  
  // MARK: - Initializers
  init(name: String, values: [CSSRepresentable]) {
    self.name = name
    self.values = values
  }

  init(name: String, value: CSSRepresentable) {
    self.init(name: name, values: [value])
  }

  init(key: PropertyKey, value: CSSRepresentable) {
    self.init(name: key.rawValue, value: value)
  }

  init(key: PropertyKey, values: [CSSRepresentable]) {
    self.init(name: key.rawValue, values: values)
  }
}

// MARK: - Property CSSRepresentable
extension Property: CSSRepresentable {
  
  var rawValue: String {
    "\(name): \(values.map( { $0.rawValue } ).joined(separator: " "));"
  }
}
