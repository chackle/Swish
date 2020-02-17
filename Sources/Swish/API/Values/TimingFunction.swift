
/**
*  Swish
*  Copyright (c) Michael Green 2020
*  MIT license, see LICENSE file for details
*/ 

public enum TimingFunction {

  case ease
  case linear
  case easeIn
  case easeOut
  case easeInOut
  case step(TimingFunctionStep)
  case steps(Int, TimingFunctionStep)
  case cubicBezier(Float, Float, Float, Float)
  case initial
  case inherit
}

extension TimingFunction: CSSRepresentable {

  var rawValue: String {
    switch self {
      case .ease: return "ease"
      case .linear: return "linear"
      case .easeIn: return "ease-in"
      case .easeOut: return "ease-out"
      case .easeInOut: return "ease-in-out"
      case .step(let step): return "step-\(step.rawValue)"
      case .steps(let value, let step): return "steps(\(value), \(step.rawValue))"
      case .cubicBezier(let a, let b, let c, let d): return "cubic-bezier(\(a), \(b), \(c), \(d))"
      case .initial: return "initial"
      case .inherit: return "inherit"
    }
  }
}

public enum TimingFunctionStep: String {

  case start
  case end
}
