
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 


import Foundation

// Currently we only instantiate Unit with a Double typing, this is in place for the future
public enum Unit<T: Numeric> {
  
    case auto
    case inherit
    case px(T)
    case pc(T)
}

extension Unit: CSSRepresentable {
  
  var rawValue: String {
    switch self {
      case .auto: return "auto"
      case .inherit: return "inherit"
      case .px(let value): return "\(value)px"
      case .pc(let value): return "\(value)%"
    }
  }
}
