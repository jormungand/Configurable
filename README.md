# Configurable

Configurable protocol: setup objects easy via closure

## Usage

### protocol Configurable – for Swift and ObjC classes

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

### protocol MutableConfigurable

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

