
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  static func transition(property: PropertyKey, duration: Duration, timingFunction: TimingFunction? = nil, delay: Duration? = nil) -> Property {
    Property(key: .transition, values: [property, duration, timingFunction, delay])
  }
}
