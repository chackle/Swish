
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

// Currently we only instantiate Unit with a Double typing, this is in place for the future
public enum Unit<T: Numeric> {
  
    case auto
    case inherit

    /*
    * Absolute Measurements
    */
    case cm(T) // centimeters
    case mm(T) // millimeters
    case `in`(T) // inches - in(1) = 96px = 2.54cm
    case px(T) // pixels - px(1) = 1/96th of in(1)
    case pt(T) // points - pt(1) = 1/72 of in(1)
    case pc(T) // picas - pc(1) = pt(12)

    /*
    * Relative Measurements
    */
    case em(T) // Relative to the font-size of the element em(2) means 2 times the size of the current font
    case ex(T) // Relative to the x-height of the current font (rarely used)
    case ch(T) //	Relative to width of the "0" (zero)
    case rem(T) // Relative to font-size of the root element
    case vw(T) // Relative to 1% of the width of the viewport
    case vh(T) // Relative to 1% of the height of the viewport
    case vmin(T) // Relative to 1% of viewport's smaller dimension
    case vmax(T) // Relative to 1% of viewport's larger dimension
    case pct(T) // percentage (%) - Relative to the parent element
}

extension Unit: CSSRepresentable {
  
  var rawValue: String {
    switch self {
      case .auto: return "auto"
      case .inherit: return "inherit"
      case .cm(let value): return "\(value)cm"
      case .mm(let value): return "\(value)mm"
      case .in(let value): return "\(value)in"
      case .px(let value): return "\(value)px"
      case .pt(let value): return "\(value)pt"
      case .pc(let value): return "\(value)pc"
      case .em(let value): return "\(value)em"
      case .ex(let value): return "\(value)ex"
      case .ch(let value): return "\(value)ch"
      case .rem(let value): return "\(value)rem"
      case .vw(let value): return "\(value)vw"
      case .vmin(let value): return "\(value)vmin"
      case .vmax(let value): return "\(value)vmax"
      case .pct(let value): return "\(value)%"
    }
  }
}
