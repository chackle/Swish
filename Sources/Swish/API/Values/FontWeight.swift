
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/

enum FontWeight {

  case normal
  case bold
  case bolder
  case lighter
  case initial
  case inherit
  case value(Int)
}

extension FontWeight: CSSRepresentable { 

  var rawValue: String {
    switch self {
      case .normal: return "normal"
      case .bold: return "bold"
      case .bolder: return "bolder"
      case .lighter: return "lighter"
      case .initial: return "initial"
      case .inherit: return "inherit"
      case .value(let value): return String(value)
    }
  }
}