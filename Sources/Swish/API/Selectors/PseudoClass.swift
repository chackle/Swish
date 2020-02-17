
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/

public enum PseudoClass {
  
  case link
  case visited
  case hover
  case active
  case checked
  case disabled
  case empty
  case enabled
  case focus
  case inRange
  case invalid
  case lang(String)
  case not(String)
  case onlyOfType
  case onlyChild
  case `optional`
  case outOfRange
  case readOnly
  case readWrite
  case `required`
  case root
  case target

  // Eventually implement optional 2nd/3rd param to apply
  // styling to inner element of the firstChild
  // lastChild, nthChild etc
  case firstChild
  case lastChild
  case nthChild(Int)
  case nthLastChild(Int)
  case nthLastOfType(Int)
  case nthOfType(Int)
}

extension PseudoClass: PseudoSelector {

  var prefixedRawValue: String { ":\(self.rawValue)" }
}

extension PseudoClass: CSSRepresentable { 

  var rawValue: String {
    switch self {
      case .link: return "link"
      case .visited: return "visited"
      case .hover: return "hover"
      case .active: return "hover"
      case .checked: return "checked"
      case .disabled: return "disabled"
      case .empty: return "empty"
      case .enabled: return "enabled"
      case .focus: return "focus"
      case .inRange: return "in-range"
      case .invalid: return "invalid"
      case .lang(let language): return "lang(\(language))"
      case .not(let selector): return "not(\(selector))"
      case .onlyOfType: return "only-of-type"
      case .onlyChild: return "only-child"
      case .optional: return "optional"
      case .outOfRange: return "out-of-range"
      case .readOnly: return "read-only"
      case .readWrite: return "read-write"
      case .required: return "required"
      case .root: return "root"
      case .target: return "target"
      case .firstChild: return "first-child"
      case .lastChild: return "last-child"
      case .nthChild(let index): return "nth-child(\(index))"
      case .nthLastChild(let index): return "nth-last-child(\(index))"
      case .nthLastOfType(let index): return "nth-last-of-type(\(index))"
      case .nthOfType(let index): return "nth-of-type(\(index))"
    }
  }
}