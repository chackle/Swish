
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public extension AnySelector {

  // generic-selector { }
  static func selector(_ name: String, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .any(name), properties: properties)
  }
  
  static func selector(_ name: String, pseudoClass: PseudoClass, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .any(name), pseudoSelector: .pseudoClass(pseudoClass), properties: properties)
  }
  
  static func selector(_ name: String, pseudoElement: PseudoElement, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .any(name), pseudoSelector: .pseudoElement(pseudoElement), properties: properties)
  }

  // .class { }
  static func `class`(_ name: String, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .class(name), properties: properties)
  }
  
  static func `class`(_ name: String, pseudoClass: PseudoClass, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .class(name), pseudoSelector: .pseudoClass(pseudoClass), properties: properties)
  }
  
  static func `class`(_ name: String, pseudoElement: PseudoElement, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .class(name), pseudoSelector: .pseudoElement(pseudoElement), properties: properties)
  }

  // #id { }
  static func id(_ name: String, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .id(name), properties: properties)
  }
  
  static func id(_ name: String, pseudoClass: PseudoClass, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .id(name), pseudoSelector: .pseudoClass(pseudoClass), properties: properties)
  }
  
  static func id(_ name: String, pseudoElement: PseudoElement, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .id(name), pseudoSelector: .pseudoElement(pseudoElement), properties: properties)
  }

  // element { }
  static func element(_ name: String, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .element(name), properties: properties)
  }
  
  static func element(_ name: String, pseudoClass: PseudoClass, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .element(name), pseudoSelector: .pseudoClass(pseudoClass), properties: properties)
  }
  
  static func element(_ name: String, pseudoElement: PseudoElement, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .element(name), pseudoSelector: .pseudoElement(pseudoElement), properties: properties)
  }

  // [attribute] { }
  static func attribute(_ name: String, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .attribute(name), properties: properties)
  }
  
  static func attribute(_ name: String, pseudoClass: PseudoClass, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .attribute(name), pseudoSelector: .pseudoClass(pseudoClass), properties: properties)
  }
  
  static func attribute(_ name: String, pseudoElement: PseudoElement, _ properties: Property...) -> AnySelector {
    AnySelector(selector: .attribute(name), pseudoSelector: .pseudoElement(pseudoElement), properties: properties)
  }
}
