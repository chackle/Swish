
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

import Foundation

public struct Color {
  
  let red, green, blue: Int
}

public extension Color {
  
  static func hex(_ value: Int) -> Color {
    Color(red: (value >> 16) & 0xff, green: (value >> 8) & 0xff, blue: value & 0xff)
  }

  static func rgb(_ red: Int, _ green: Int, _ blue: Int) -> Color {
    Color(red: red, green: green, blue: blue)
  }
}

extension Color: CSSRepresentable {
  
  var rawValue: String {
      String(format:"#%02X%02X%02X", red, green, blue)
  }
}

// CSS Color Names
public extension Color {

  static var aliceBlue: Color { .hex(0xf0f8ff) }
  static var antiqueWhite: Color { .hex(0xfaebd7) }
  static var aqua: Color { .hex(0x00ffff) }
  static var aquamarine: Color { .hex(0x7fffd4) }
  static var azure: Color { .hex(0xf0ffff) }
  static var beige: Color { .hex(0xf5f5dc) }
  static var bisque: Color { .hex(0xffe4c4) }
  static var black: Color { .hex(0x000000) }
  static var blanchedAlmond: Color { .hex(0xffebcd) }
  static var blue: Color { .hex(0x0000ff) }
  static var blueViolet: Color { .hex(0x8a2be2) }
  static var brown: Color { .hex(0xa52a2a) }
  static var burleywood: Color { .hex(0xdeb887) }
  static var cadetBlue: Color { .hex(0x5f9ea0) }
  static var chartreuse: Color { .hex(0x7fff00) }
  static var chocolate: Color { .hex(0xd2691e) }
  static var coral: Color { .hex(0xff7f50) }
  static var cornflowerBlue: Color { .hex(0x6495ed) }
  static var cornsilk: Color { .hex(0xfff8dc) }
  static var crimson: Color { .hex(0xdc143c) }
  static var cyan: Color { .hex(0x00ffff) }
  static var darkBlue: Color { .hex(0x00008B) }
  static var darkCyan: Color { .hex(0x008B8B) }
  static var darkGoldenRod: Color { .hex(0xb8860b) }
  static var darkGray: Color { .hex(0xa9a9a9) }
  static var darkGreen: Color { .hex(0x006400) }
  static var darkKhaki: Color { .hex(0xbdb76b) }
  static var darkMagenta: Color { .hex(0x8b008b) }
  static var darkOliveGreen: Color { .hex(0x556b2f) }
  static var darkOrange: Color { .hex(0xff8c00) }
  static var darkOrchid: Color { .hex(0x9932cc) }
  static var darkRed: Color { .hex(0x8b0000) }
  static var darkSalmon: Color { .hex(0xe9967a) }
  static var darkSeaGreen: Color { .hex(0x8fbc8f) }
  static var darkSlateBlue: Color { .hex(0x483d8b) }
  static var darkSlateGray: Color { .hex(0x2f4f4f) }
  static var darkTurqoise: Color { .hex(0x00ced1) }
  static var darkViolet: Color { .hex(0x9400d3) }
  static var deepPink: Color { .hex(0xff1493) }
  static var deepSkyBlue: Color { .hex(0x00bfff) }
  static var dimGray: Color { .hex(0x696969) }
  static var dodgerBlue: Color { .hex(0x1e90ff) }
  static var fireBrick: Color { .hex(0xb22222) }
  static var floralWhite: Color { .hex(0xfffaf0) }
  static var forestGreen: Color { .hex(0x228b22) }
  static var fuchsia: Color { .hex(0xff00ff) }
  static var gainsboro: Color { .hex(0xdcdcdc) }
  static var ghostWhite: Color { .hex(0xf8f8ff) }
  static var gold: Color { .hex(0xffd700) }
  static var goldenRod: Color { .hex(0xdaa520) }
  static var gray: Color { .hex(0x808080) }
  static var green: Color { .hex(0x008000) }
  static var greenYellow: Color { .hex(0xadff2f) }
  static var honeyDew: Color { .hex(0xf0fff0) }
  static var hotPink: Color { .hex(0xff69b4) }
  static var indianRed: Color { .hex(0xcd5c5c) }
  static var indigo: Color { .hex(0x4b0082) }
  static var ivory: Color { .hex(0xfffff0) }
  static var khaki: Color { .hex(0xf0e68c) }
  static var lavendar: Color { .hex(0xe6e6fa) }
  static var lavendarBlush: Color { .hex(0xfff0f5) }
  static var lawnGreen: Color { .hex(0x7cfc00) }
  static var lemonChiffon: Color { .hex(0xfffacd) }
  static var lightBlue: Color { .hex(0xadd8e6) }
  static var lightCoral: Color { .hex(0xf08080) }
  static var lightCyan: Color { .hex(0xe0ffff) }
  static var lightGoldenRodYellow: Color { .hex(0xfafad2) }
  static var lightGray: Color { .hex(0xd3d3d3) }
  static var lightGreen: Color { .hex(0x90EE90) }
  static var lightPink: Color { .hex(0xffb6c1) }
  static var lightSalmon: Color { .hex(0xffa07a) }
  static var lightSeaGreen: Color { .hex(0x20b2aa) }
  static var lightSkyBlue: Color { .hex(0x87cefa) }
  static var lightSlateGray: Color { .hex(0x778899) }
  static var lightSteelBlue: Color { .hex(0xb0c4de) }
  static var lightYellow: Color { .hex(0xffffe0) }
  static var lime: Color { .hex(0x00ff00) }
  static var limeGreen: Color { .hex(0x32cd32) }
  static var linen: Color { .hex(0xfaf0e6) }
  static var magenta: Color { .hex(0xff00ff) }
  static var maroon: Color { .hex(0x800000) }
  static var mediumAquaMarine: Color { .hex(0x66cdaa) }
  static var mediumBlue: Color { .hex(0x0000cd) }
  static var mediumOrchid: Color { .hex(0xba55d3) }
  static var mediumPurple: Color { .hex(0x9370db) }
  static var mediumSeaGreen: Color { .hex(0x3cb371) }
  static var mediumSlateBlue: Color { .hex(0x7b68ee) }
  static var mediumSpringGreen: Color { .hex(0x00fa9a) }
  static var mediumTurquoise: Color { .hex(0x48d1cc) }
  static var mediumVioletRed: Color { .hex(0xc71585) }
  static var midnightBlue: Color { .hex(0x191970) }
  static var mintCream: Color { .hex(0xf5fffa) }
  static var mistyRose: Color { .hex(0xffe4e1) }
  static var moccasin: Color { .hex(0xffe4b5) }
  static var navajoWhite: Color { .hex(0xffdead) }
  static var navy: Color { .hex(0x000080) }
  static var oldLace: Color { .hex(0xfdf5e6) }
  static var olive: Color { .hex(0x808000) }
  static var oliveDrab: Color { .hex(0x6b8e23) }
  static var orange: Color { .hex(0xffa500) }
  static var orangeRed: Color { .hex(0xff4500) }
  static var orchid: Color { .hex(0xda70d6) }
  static var paleGoldenRod: Color { .hex(0xeee8aa) }
  static var paleGreen: Color { .hex(0x98fb98) }
  static var paleTurquoise: Color { .hex(0xafeeee) }
  static var paleVioletRed: Color { .hex(0xdb7093) }
  static var papayaWhip: Color { .hex(0xffefd5) }
  static var peachPuff: Color { .hex(0xffdab9) }
  static var peru: Color { .hex(0xcd853f) }
  static var pink: Color { .hex(0xffc0cb) }
  static var plum: Color { .hex(0xdda0dd) }
  static var powderBlue: Color { .hex(0xb0e0e6) }
  static var purple: Color { .hex(0x800080) }
  static var rebeccaPurple: Color { .hex(0x663399) }
  static var red: Color { .hex(0xff0000) }
  static var rosyBrown: Color { .hex(0xbc8f8f) }
  static var royalBlue: Color { .hex(0x4169e1) }
  static var saddleBrown: Color { .hex(0x8b4513) }
  static var salmon: Color { .hex(0xfa8072) }
  static var sandyBrown: Color { .hex(0xf4a460) }
  static var seaGreen: Color { .hex(0x2e8b57) }
  static var seaShell: Color { .hex(0xfff5ee) }
  static var sienna: Color { .hex(0xa0522d) }
  static var silver: Color { .hex(0xc0c0c0) }
  static var skyBlue: Color { .hex(0x87ceeb) }
  static var slateBlue: Color { .hex(0x6a5acd) }
  static var slateGray: Color { .hex(0x708090) }
  static var snow: Color { .hex(0xfffafa) }
  static var springGreen: Color { .hex(0x00ff7f) }
  static var steelBlue: Color { .hex(0x4682b4) }
  static var tan: Color { .hex(0xd2b48c) }
  static var teal: Color { .hex(0x008080) }
  static var thistle: Color { .hex(0xd8bfd8) }
  static var tomato: Color { .hex(0xff6347) }
  static var skyBlue: Color { .hex(0x87ceeb) }
  static var turquoise: Color { .hex(0x40e0d0) }
  static var violet: Color { .hex(0xee82ee) }
  static var wheat: Color { .hex(0xf5deb3) }
  static var white: Color { .hex(0xffffff) }
  static var whiteSmoke: Color { .hex(0xf5f5f5) }
  static var yellow: Color { .hex(0xffff00) }
  static var yellowGreen: Color { .hex(0x9acd32) }
}
