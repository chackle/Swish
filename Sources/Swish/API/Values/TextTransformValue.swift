
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

enum TextTransformValue: String {

  case none
  case capitalize
  case uppercase
  case lowercase
  case initial
  case inherit
}

extension TextTransformValue: CSSRepresentable { }