
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func width(_ value: Unit<Double>) -> Property {
    Property(key: .width, value: value)
  }

  static func minWidth(_ value: Unit<Double>) -> Property {
    Property(key: .minWidth, value: value)
  }

  static func maxWidth(_ value: Unit<Double>) -> Property {
    Property(key: .maxWidth, value: value)
  }

  static func height(_ value: Unit<Double>) -> Property {
    Property(key: .height, value: value)
  }

  static func minHeight(_ value: Unit<Double>) -> Property {
    Property(key: .minHeight, value: value)
  }
  
  static func maxHeight(_ value: Unit<Double>) -> Property {
    Property(key: .maxHeight, value: value)
  }
}