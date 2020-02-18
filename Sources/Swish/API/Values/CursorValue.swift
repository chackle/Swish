
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum CursorValue: String {
  
  case alias
  case allScroll = "all-scroll"
  case auto
  case cell
  case contextMenu = "context-menu"
  case colResize = "col-resize"
  case copy
  case crosshair
  case `default`
  case eResize = "e-resize"
  case ewResize = "ew-resize"
  case grab
  case grabbing
  case help
  case move
  case nResize = "n-resize"
  case neResize = "ne-resize"
  case neswResize = "nesw-resize"
  case nsResize = "ns-resize"
  case nwResize = "nw-resize"
  case nwseResize = "nwse-resize"
  case noDrop = "no-drop"
  case none
  case notAllowed = "not-allowed"
  case pointer
  case progress
  case rowResize = "row-resize"
  case sResize = "s-resize"
  case seResize = "se-resize"
  case swResize = "sw-resize"
  case text
  case verticalText = "vertical-text"
  case wResize = "w-resize"
  case wait
  case zoomIn = "zoom-in"
  case zoomOut = "zoom-out"
  case initial
  case inherit
}

extension CursorValue: CSSRepresentable { }
