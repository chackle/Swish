
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func border(width: Unit<Double>? = nil, style: BorderStyle, color: Color? = nil) -> Property {
    Property(key: .border, values: [width, style, color])
  }
  
  static func borderRadius(top: Unit<Double>? = nil, right: Unit<Double>? = nil, bottom: Unit<Double>? = nil, left: Unit<Double>? = nil) -> Property {
    Property(key: .borderRadius, values: [top, right, bottom, left])
  }
  
  static func borderRadius(_ value: Unit<Double>) -> Property {
    Property(key: .borderRadius, value: value)
  }
}
