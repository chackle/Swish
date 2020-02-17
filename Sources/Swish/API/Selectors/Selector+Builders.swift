
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension AnySelector {

  // generic-selector { }
  static func selector(_ name: String, _ pseudoSelector: AnyPseudoSelector? = nil, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .any(name), pseudoSelector: pseudoSelector, properties: properties)
  }

  // .class { }
  static func `class`(_ name: String, _ pseudoSelector: AnyPseudoSelector? = nil, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .class(name), pseudoSelector: pseudoSelector, properties: properties)
  }

  // #id { }
  static func id(_ name: String, _ pseudoSelector: AnyPseudoSelector? = nil, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .id(name), pseudoSelector: pseudoSelector, properties: properties)
  }

  // element { }
  static func element(_ name: String, _ pseudoSelector: AnyPseudoSelector? = nil, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .element(name), pseudoSelector: pseudoSelector, properties: properties)
  }

  // [attribute] { }
  static func attribute(_ name: String, _ pseudoSelector: AnyPseudoSelector? = nil, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .attribute(name), pseudoSelector: pseudoSelector, properties: properties)
  }
}