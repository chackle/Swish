
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func border(width: Unit<Double>? = nil, style: BorderStyle, color: Color? = nil) -> Property {
    Property(key: .border, values: [width, style, color])
  }
  
  static func borderRadius(top: Unit<Double> = .px(0), right: Unit<Double> = .px(0), bottom: Unit<Double> = .px(0), left: Unit<Double> = .px(0)) -> Property {
    Property(key: .borderRadius, value: UnitSet<Double, Double, Double, Double>(top: top, right: right, bottom: bottom, left: left))
  }
  
  static func borderRadius(_ value: Unit<Double>) -> Property {
    Property(key: .borderRadius, value: UnitSet<Double, Double, Double, Double>(top: value, right: value, bottom: value, left: value))
  }
}
