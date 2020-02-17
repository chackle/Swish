
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum LengthValue: String {

  case auto
  case initial
  case inherit
}

extension LengthValue: CSSRepresentable { }