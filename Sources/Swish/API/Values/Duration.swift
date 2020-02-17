
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum Duration {

  case s(Int)
  case ms(Int)
}

extension Duration: CSSRepresentable { 

  var rawValue: String {
    switch self {
      case .s(let value): return "\(value)s"
      case .ms(let value): return "\(value)ms"
    }
  }
}
