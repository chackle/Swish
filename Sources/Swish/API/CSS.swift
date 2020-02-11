
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public struct CSS {
  
  let selectors: [Selector]
  
  public init(_ selectors: Selector...) {
    self.selectors = selectors
  }
  
  public func render() -> String {
    return self.rawValue
  }
}

extension CSS: CSSRepresentable {
  
  var rawValue: String {
    selectors.map( { $0.rawValue } ).joined(separator: " ")
  }
}
