
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum GenericValue: String {
  
  case none
  case initial
  case inherit
  case auto
}

extension GenericValue: CSSRepresentable { }