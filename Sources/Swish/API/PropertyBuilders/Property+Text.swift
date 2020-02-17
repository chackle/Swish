
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func font(family: String) -> Property {
    Property(key: .font, values: [AnyValue("\"\(family)\"")])
  }
  
  static func textAlign(_ value: TextAlignValue) -> Property {
    Property(key: .textAlign, value: value)
  }
}