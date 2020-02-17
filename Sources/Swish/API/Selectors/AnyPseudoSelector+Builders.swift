
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/

public extension AnyPseudoSelector {

  static func pseudoClass(_ selector: PseudoClass, _ innerSelector: Selector? = nil) -> AnyPseudoSelector {
    AnyPseudoSelector(pseudoSelector: selector, innerSelector: innerSelector)
  }

  static func pseudoElement(_ selector: PseudoElement, _ innerSelector: Selector? = nil) -> AnyPseudoSelector {
    AnyPseudoSelector(pseudoSelector: selector, innerSelector: innerSelector)
  }
}