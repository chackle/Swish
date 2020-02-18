
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func position(_ value: PositionValue) -> Property {
    Property(key: .position, value: value)
  }

  static func top(_ value: Unit<Double>) -> Property {
    Property(key: .top, value: value)
  }

  static func right(_ value: Unit<Double>) -> Property {
    Property(key: .right, value: value)
  }

  static func bottom(_ value: Unit<Double>) -> Property {
    Property(key: .bottom, value: value)
  }

  static func left(_ value: Unit<Double>) -> Property {
    Property(key: .left, value: value)
  }
}
