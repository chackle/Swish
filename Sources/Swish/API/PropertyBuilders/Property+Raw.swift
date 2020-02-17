
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {
  
  static func raw(property: String, value: String) -> Property {
    Property(name: property, value: AnyValue(value))
  }

  static func width(_ value: Unit<Double>) -> Property {
    Property(key: .width, value: value)
  }

  static func height(_ value: Unit<Double>) -> Property {
    Property(key: .height, value: value)
  }

  static func color(_ value: Color) -> Property {
    Property(key: .color, value: value)
  }

  static func background(color: Color) -> Property {
    Property(key: .background, values: [color])
  }

  static func font(family: String) -> Property {
    Property(key: .font, values: [AnyValue("\"\(family)\"")])
  }
  
  static func textAlign(_ value: TextAlignValue) -> Property {
    Property(key: .textAlign, value: value)
  }
}

