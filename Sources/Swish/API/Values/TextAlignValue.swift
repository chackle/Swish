
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum TextAlignValue: String {
  
  case left = "left"
  case right = "right"
  case center = "center"
  case justify = "justify"
  case initial = "initial"
  case inherit = "inherit"
}

extension TextAlignValue: CSSRepresentable { }
