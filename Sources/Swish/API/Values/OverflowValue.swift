
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 


import Foundation

public enum OverflowValue: String {
  
  case visible = "visible"
  case hidden = "hidden"
  case scroll = "scroll"
  case auto = "auto"
  case intial = "initial"
  case inherit = "inherit"
}

extension OverflowValue: CSSRepresentable { }
