
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/

public enum PseudoElement: String {

  case after
  case before
  case firstLetter = "first-letter"
  case firstLine = "first-line"
  case selection
}

extension PseudoElement: PseudoSelector {

  var prefixedRawValue: String { "::\(self.rawValue)" }
}

extension PseudoElement: CSSRepresentable { }