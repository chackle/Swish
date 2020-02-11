
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum PositionValue: String {
  
  case `static` = "static"
  case relative = "relative"
  case absolute = "absolute"
  case fixed = "fixed"
  case sticky = "sticky"
  case initial = "initial"
  case inherit = "inherit"
}

extension PositionValue: CSSRepresentable { }
