
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 


import Foundation

public extension Property {
  
  static func raw(property: String, value: String) -> Property {
    Property(name: property, value: AnyValue(value))
  }

  static func cursor(_ value: CursorValue) -> Property {
    Property(key: .cursor, value: value)
  }

  static func position(_ value: PositionValue) -> Property {
    Property(key: .position, value: value)
  }

  static func padding(top: Unit<Double> = .px(0), right: Unit<Double> = .px(0), bottom: Unit<Double> = .px(0), left: Unit<Double> = .px(0)) -> Property {
    Property(key: .padding, value: UnitSet<Double, Double, Double, Double>(top: top, right: right, bottom: bottom, left: left))
  }
  
  static func padding(_ value: Unit<Double> = .px(0)) -> Property {
    Property(key: .padding, value: UnitSet<Double, Double, Double, Double>(top: value, right: value, bottom: value, left: value))
  }

  static func margin(top: Unit<Double> = .px(0), right: Unit<Double> = .px(0), bottom: Unit<Double> = .px(0), left: Unit<Double> = .px(0)) -> Property {
    Property(key: .margin, value: UnitSet<Double, Double, Double, Double>(top: top, right: right, bottom: bottom, left: left))
  }

  static func display(_ values: DisplayValue...) -> Property {
    Property(key: .display, values: values)
  }

  static func width(_ value: Unit<Double>) -> Property {
    Property(key: .width, value: value)
  }

  static func height(_ value: Unit<Double>) -> Property {
    Property(key: .height, value: value)
  }

  static func color(_ value: Color) -> Property {
    Property(key: .color, value: value)
  }

  static func background(color: Color) -> Property {
    Property(key: .background, values: [color])
  }

  static func font(family: String) -> Property {
    Property(key: .font, values: [AnyValue("\"\(family)\"")])
  }
  
  static func textAlign(_ value: TextAlignValue) -> Property {
    Property(key: .textAlign, value: value)
  }
}

