
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {
  
  static func raw(property: String, value: String) -> Property {
    Property(name: property, value: AnyValue(value))
  }
}

