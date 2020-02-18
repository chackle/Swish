
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func overflow(_ value: OverflowValue) -> Property {
    Property(key: .overflow, value: value)
  }

  static func overflowX(_ value: OverflowValue) -> Property {
    Property(key: .overflowX, value: value)
  }

  static func overflowY(_ value: OverflowValue) -> Property {
    Property(key: .overflowY, value: value)
  }
}