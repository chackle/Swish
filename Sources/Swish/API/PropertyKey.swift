
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum PropertyKey: String {
  
  case animation
  case background
  case color
  case cursor
  case font
  case width
  case height
  case display
  case position
  case border
  case borderRadius = "border-radius"
  case padding
  case margin
  case overflow
  case overflowX = "overflow-x"
  case overflowY = "overflow-y"
  case opacity
  case top
  case right
  case left
  case bottom
  case transform
  case transition
  case minWidth = "min-width"
  case maxWidth = "max-width"
  case minHeight = "min-height"
  case maxHeight = "max-height"
  case boxShadow = "box-shadow"
  case textAlign = "text-align"
  case textOverflow = "text-overflow"
  case textShadow = "text-shadow"
}

extension PropertyKey: CSSRepresentable { }
