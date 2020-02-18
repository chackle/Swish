
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

struct UnitSet<T: Numeric, R: Numeric, B: Numeric, L: Numeric> {
  
  let first: Unit<T>
  let second: Unit<R>
  let third: Unit<B>
  let fourth: Unit<L>

  init(first: Unit<T>, second: Unit<R>, third: Unit<B>, fourth: Unit<L>) {
    self.first = first
    self.second = second
    self.third = third
    self.fourth = fourth
  }
}

extension UnitSet: CSSRepresentable {
  
  var rawValue: String {
    "\(first.rawValue) \(second.rawValue) \(third.rawValue) \(fourth.rawValue)"
  }
}
