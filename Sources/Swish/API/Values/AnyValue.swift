
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 


import Foundation

struct AnyValue {
  
  let value: String
  
  init(_ value: String) {
    self.value = value
  }
}

extension AnyValue: CSSRepresentable {
  
  var rawValue: String { value }
}
