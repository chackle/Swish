
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func border(width: Unit<Double>? = nil, style: BorderStyle, color: Color? = nil) -> Property {
    Property(key: .border, values: [width, style, color])
  }
}