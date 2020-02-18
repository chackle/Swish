
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

enum ZIndexValue {

  case auto
  case initial
  case inherit
  case index(Int)
}

extension ZIndexValue: CSSRepresentable { 

  var rawValue: String {
    switch self {
      case .auto: return "auto"
      case .initial: return "initial"
      case .inherit: return "inherit"
      case .index(let index): return String(index)
    }
  }
}