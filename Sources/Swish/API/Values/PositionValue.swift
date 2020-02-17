
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum PositionValue: String {
  
  case `static`
  case relative
  case absolute
  case fixed
  case sticky
  case initial
  case inherit
}

extension PositionValue: CSSRepresentable { }
