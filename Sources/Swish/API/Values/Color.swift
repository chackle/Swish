
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

import Foundation

public struct Color {
  
  let red, green, blue: Int
}

public extension Color {
  
  static func hex(_ value: Int) -> Color {
    Color(red: (value >> 16) & 0xff, green: (value >> 8) & 0xff, blue: value & 0xff)
  }

  static func rgb(_ red: Int, _ green: Int, _ blue: Int) -> Color {
    Color(red: red, green: green, blue: blue)
  }
}

extension Color: CSSRepresentable {
  
  var rawValue: String {
      String(format:"#%02X%02X%02X", red, green, blue)
  }
}
