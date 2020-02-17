
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum OverflowValue: String {
  
  case visible
  case hidden
  case scroll
  case auto
  case intial
  case inherit
}

extension OverflowValue: CSSRepresentable { }
