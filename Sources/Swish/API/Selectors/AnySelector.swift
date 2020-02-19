
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public struct AnySelector {
  
  let selector: Selector
  let pseudoSelector: AnyPseudoSelector?
  let properties: [Property]

  init(selector: Selector, pseudoSelector: AnyPseudoSelector? = nil, properties: [Property]) {
    self.selector = selector
    self.pseudoSelector = pseudoSelector
    self.properties = properties
  }
}

extension AnySelector: CSSRepresentable {
  
  var rawValue: String {
    "\(selector.rawValue)\(pseudoSelector?.rawValue ?? "") { \(properties.map( { $0.rawValue } ).joined(separator: " "))\(properties.count > 0 ? " " : "")}"
  }
}
