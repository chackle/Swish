
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/

class AnyPseudoSelector {

  let pseudoSelector: PseudoSelector
  let innerSelector: Selector?

  init(pseudoSelector: PseudoSelector, innerSelector: Selector? = nil) {
    self.pseudoSelector = pseudoSelector
    self.innerSelector = innerSelector
  }
}

extension AnyPseudoSelector: CSSRepresentable {

  var rawValue: String {
    guard let innerSelector = innerSelector else { return pseudoSelector.prefixedRawValue }
    return "\(pseudoSelector.prefixedRawValue) \(innerSelector.rawValue)"
  }
}