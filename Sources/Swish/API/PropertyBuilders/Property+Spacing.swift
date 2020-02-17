
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension Property {

  // Outer margin
  static func margin(top: Unit<Double> = .px(0), right: Unit<Double> = .px(0), bottom: Unit<Double> = .px(0), left: Unit<Double> = .px(0)) -> Property {
    Property(key: .margin, value: UnitSet<Double, Double, Double, Double>(top: top, right: right, bottom: bottom, left: left))
  }
  
  static func margin(_ value: Unit<Double> = .px(0)) -> Property {
    Property(key: .margin, value: UnitSet<Double, Double, Double, Double>(top: value, right: value, bottom: value, left: value))
  }

  // Inner padding
  static func padding(top: Unit<Double> = .px(0), right: Unit<Double> = .px(0), bottom: Unit<Double> = .px(0), left: Unit<Double> = .px(0)) -> Property {
    Property(key: .padding, value: UnitSet<Double, Double, Double, Double>(top: top, right: right, bottom: bottom, left: left))
  }
  
  static func padding(_ value: Unit<Double> = .px(0)) -> Property {
    Property(key: .padding, value: UnitSet<Double, Double, Double, Double>(top: value, right: value, bottom: value, left: value))
  }
}