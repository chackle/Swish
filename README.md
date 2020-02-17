# 🎨 Swish
<p>
    <img src="https://img.shields.io/badge/Swift-5.1-orange.svg" />
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/swiftpm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
    </a>
    <img src="https://img.shields.io/badge/platforms-mac+linux-brightgreen.svg?style=flat" alt="Mac + Linux" />
</p>

Swish is a domain-specific language for writing type-safe CSS in Swift and best used for small, simple websites. Swish shines when combined with other Swift solutions for web development such as [Vapor](https://github.com/vapor/vapor), [Plot](https://github.com/JohnSundell/Plot) and [Publish](https://github.com/JohnSundell/publish).

## ✍️ Writing CSS in Swift

Swish allows you to write CSS using expressive Swift code with type-safe builders to help reduce mistakes and make code easier to read and understand:

``` swift
let css = CSS(
  .class("home-header",
    .position(.relative),
    .width(.pct(100)),
    .height(.auto),
    .padding(.px(32)),
    .textAlign(.center)
  ),
  .element("body",
    .background(
      color: .hex(0x000000)
    )
  )
)
```

The above should look pretty recognizable if you've ever used CSS before. Swish property builder functions map to CSS, but they also remove the need to specify all values for some properties. Take padding for example, normally we would have to specify `16px 0px 0px 16px` if we wanted to change a `top` and `left` value. With Swish you can simply specify `.padding(top: .px(16), left: .px(16))` and it'll fill in the blanks.

## 🤔 Using Unsupported Properties

Swish doesn't support all CSS properties natively (yet), but if there is a property you wish to use then you can use the `.raw` builder to inject your own property name and value. Here's an example of how we would add an unsupported `border` property:

``` swift
let css = CSS(
  .class("container",
    .raw(property: "border", value: "2px solid red")
  )
)
```

## 🔨 TODOs

- [ ] Provide further CSS property coverage
- [ ] Add tests
- [ ] Add internal documentation
