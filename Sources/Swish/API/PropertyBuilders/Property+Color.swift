
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func color(_ value: Color) -> Property {
    Property(key: .color, value: value)
  }
}