
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

enum FloatValue: String {

  case none
  case left
  case right
  case initial
  case inherit
}

extension FloatValue: CSSRepresentable { }