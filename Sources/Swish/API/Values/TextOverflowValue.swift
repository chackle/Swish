
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/

enum TextOverflowValue {

  case clip
  case ellipsis
  case value(String)
  case initial
  case inherit
}

extension TextOverflowValue: CSSRepresentable {

  public var rawValue: String {
    switch self {
      case .clip: return "clip"
      case .ellipsis: return "ellipsis"
      case .value(let value): return "\"\(value)\""
      case .inherit: return "inherit"
      case .initial: return "initial"
    }
  }
}
