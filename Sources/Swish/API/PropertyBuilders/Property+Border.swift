
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func border(width: Unit<Double>? = nil, style: BorderStyle, color: Color? = nil) -> Property {
    Property(key: .border, values: [width, style, color])
  }
  
  static func borderRadius(topLeft: Unit<Double> = .px(0), topRight: Unit<Double> = .px(0), bottomRight: Unit<Double> = .px(0), bottomLeft: Unit<Double> = .px(0)) -> Property {
    Property(key: .borderRadius, value: UnitSet<Double, Double, Double, Double>(first: topLeft, second: topRight, third: bottomRight, fourth: bottomLeft))
  }
  
  static func borderRadius(_ value: Unit<Double>) -> Property {
    Property(key: .borderRadius, value: UnitSet<Double, Double, Double, Double>(first: value, second: value, third: value, fourth: value))
  }
}
