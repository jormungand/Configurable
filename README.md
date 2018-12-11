# Configurable

Configurable protocol: setup objects easy via closures

## Usage

This tiny extension provides the approach to simplify and significantly increase visual perception of the code, to make it more structured, to segregate logic blocks and to get rid of local vars waste:

**Before:**

```swift
override func loadView() {
    let view = UITextView(frame: .zero)

    view.backgroundColor = UIColor(white: 1.0, alpha: 0.1)
    view.isUserInteractionEnabled = false
    view.font = UIFont.monospacedDigitSystemFont(ofSize: 8.0, weight: UIFont.Weight.regular)

    view.layer.shadowColor = UIColor.white.cgColor
    view.layer.shadowRadius = 4.0
    view.layer.shadowOpacity = 0.9
    view.layer.shadowOffset = .zero
    view.layer.masksToBounds = false

    self.view = view
}
```

**After:**

```swift
override func loadView() {

    view = UITextView(frame: .zero).configure { view in
        view.backgroundColor = UIColor(white: 1.0, alpha: 0.1)
        view.isUserInteractionEnabled = false
        view.font = UIFont.monospacedDigitSystemFont(ofSize: 8.0, weight: UIFont.Weight.regular)

        view.layer.configure {
            $0.shadowColor = UIColor.white.cgColor
            $0.shadowRadius = 4.0
            $0.shadowOpacity = 0.9
            $0.shadowOffset = .zero
            $0.masksToBounds = false
        }
    }
}
```

## API

Configurable contains 2 protocols: `Configurable` and `MutableConfigurable`. 

Both these protocols provide `func configure(_:)` which takes a configuration closure as a parameter. The difference between them is:

- The `Configurable` protocol is dedicated for using with Swift and ObjC classes, as it passes `Self` into the configuration closure. 
- The `MutableConfigurable` protocol is dedicated for using with Swift Value Types (basic types, structs, enums, ...), as it passes `inout Self` into the configuration closure. 

### Configurable – for Swift and ObjC classes

```swift

let view = UIView(frame: .zero).configure { view in

    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .green

    view.layer.configure {
        $0.cornerRadius = 5.0
        $0.masksToBounds = true
    }
}
```

### MutableConfigurable – for Swift Value Types (basic types, structs, enums, ...)

```swift
struct MyModelItem: MutableConfigurable {
    var itemID: Int = 0
    var name: String = ""
    // ....
}

let myItem = MyModelItem().configure {
    $0.itemID = 123
    $0.name = "name"
    // ....
}
```

## Requirements
- Swift 4.2

## Installation<a name="installation"></a>

### [CocoaPods](http://cocoapods.org)

Configurable is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "Configurable"
```

### [Carthage](https://github.com/Carthage/Carthage)

To install Configurable add a dependency to your Cartfile:

```
github "jormungand/Configurable"
```

### Import

Import installed modules in your source files

```swift
import Configurable
```

## Author

Ilya Stroganov, ilya.stroganov@gmail.com

Linkedin: <https://www.linkedin.com/in/ilyastroganov/>

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

