
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 


import Foundation

public extension Selector {

  static func selector(_ name: String, _ properties: Property...) -> Selector {
    Selector(name: name, properties: properties)
  }

  static func `class`(_ name: String, _ properties: Property...) -> Selector {
    Selector(name: ".\(name)", properties: properties)
  }
}
