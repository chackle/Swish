
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func width(_ value: Unit<Double>) -> Property {
    Property(key: .width, value: value)
  }

  static func height(_ value: Unit<Double>) -> Property {
    Property(key: .height, value: value)
  }
}