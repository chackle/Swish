
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

struct UnitSet<T: Numeric, R: Numeric, B: Numeric, L: Numeric> {
  
  let top: Unit<T>
  let right: Unit<R>
  let bottom: Unit<B>
  let left: Unit<L>

  init(top: Unit<T>, right: Unit<R>, bottom: Unit<B>, left: Unit<L>) {
    self.top = top
    self.right = right
    self.bottom = bottom
    self.left = left
  }
}

extension UnitSet: CSSRepresentable {
  
  var rawValue: String {
    "\(top.rawValue) \(`right`.rawValue) \(bottom.rawValue) \(`left`.rawValue)"
  }
}
