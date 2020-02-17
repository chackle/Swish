
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func display(_ values: DisplayValue...) -> Property {
    Property(key: .display, values: values)
  }
}