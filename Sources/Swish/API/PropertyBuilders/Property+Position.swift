
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func position(_ value: PositionValue) -> Property {
    Property(key: .position, value: value)
  }
}