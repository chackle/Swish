
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum BorderStyle: String {

  case none
  case hidden
  case dotted
  case dashed
  case solid
  case double
  case groove
  case ridge
  case inset
  case outset
  case initial
  case inherit
}

extension BorderStyle: CSSRepresentable { }
