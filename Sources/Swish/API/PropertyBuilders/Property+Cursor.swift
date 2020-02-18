
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func cursor(_ value: CursorValue) -> Property {
    Property(key: .cursor, value: value)
  }
}