
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/

public enum Selector {
  
  case any(String)
  case `class`(String)
  case id(String)
  case element(String)
  case attribute(String)
}

extension Selector: CSSRepresentable {

  var rawValue: String {
    switch self {
      case .class(let name): return ".\(name)"
      case .id(let name): return "#\(name)"
      case .element(let name), .any(let name): return name
      case .attribute(let name): return "[\(name)]"
    }
  }
}
