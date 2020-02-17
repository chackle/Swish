
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func background(color: Color) -> Property {
    Property(key: .background, values: [color])
  }
}