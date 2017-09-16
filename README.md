# SwiftyDateHelper
Date extension helper for Swift

## Example

Fist, you need to import this library

```swift
import SwiftyDateHelper
```

### Using the SwiftyDateHelper

```swift

//Custom Initialize
let date = Date(year  : 2017,
                month : 11,
                day   : 10,
                hour  : 13,
                minute: 20,
                second: 2)
print(date.toString)            //2017/11/10 13:20:02

let date = Date(year: 2017)
print(dateWithYear.toString())  //2017/09/16 20:07:11

let date = Date(month: 11)
print(date.toString())          //2017/11/16 20:08:11

let date = Date(day: 20)
print(date.toString())         //2017/09/20 20:09:51

let date = Date(hour: 1)
print(date.toString())         //2017/09/16 01:09:51


```

## Requirements
Swift3.0 or latter.

## Installation

HttpSwift is available through [Carthage](https://github.com/Carthage/Carthage) or
[Swift Package Manager](https://github.com/apple/swift-package-manager).

### Carthage

```
github "hlts2/SwiftyDateHelper"
```

for detail, please follow the [Carthage Instruction](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos)

### Swift Package Manager

```
dependencies: [
    .Package(url: "https://github.com/hlts2/SwiftyDateHelper.git", majorVersion: 1)
]
```

for detail, please follow the [Swift Package Manager Instruction](https://github.com/apple/swift-package-manager/blob/master/Documentation/Usage.md)
