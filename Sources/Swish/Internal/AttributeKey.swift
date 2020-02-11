
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 


import Foundation

enum PropertyKey: String {
  
  case animation = "animation"
  case background = "background"
  case color = "color"
  case cursor = "cursor"
  case font = "font"
  case width = "width"
  case height = "height"
  case display = "display"
  case position = "position"
  case border = "border"
  case padding = "padding"
  case margin = "margin"
  case overflow = "overflow"
  case textAlign = "text-align"
}

extension PropertyKey: CSSRepresentable { }
