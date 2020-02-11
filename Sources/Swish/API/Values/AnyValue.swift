
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

struct AnyValue {
  
  let value: String
  
  init(_ value: String) {
    self.value = value
  }
}

extension AnyValue: CSSRepresentable {
  
  var rawValue: String { value }
}
