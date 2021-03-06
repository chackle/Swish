
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum TextAlignValue: String {
  
  case left
  case right
  case center
  case justify
  case initial
  case inherit
}

extension TextAlignValue: CSSRepresentable { }
