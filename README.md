# RxAssert

[![CI Status](http://img.shields.io/travis/muukii/RxAssert.svg?style=flat)](https://travis-ci.org/muukii/RxAssert)
[![Version](https://img.shields.io/cocoapods/v/RxAssert.svg?style=flat)](http://cocoapods.org/pods/RxAssert)
[![License](https://img.shields.io/cocoapods/l/RxAssert.svg?style=flat)](http://cocoapods.org/pods/RxAssert)
[![Platform](https://img.shields.io/cocoapods/p/RxAssert.svg?style=flat)](http://cocoapods.org/pods/RxAssert)

## Usage

Check element in Stream

```swift
extension Observable {

    public func assert(message: String = default, _ condition: (Event<E>) -> Bool) -> RxSwift.Observable<Element>

    public func assertNext(message: String = default, _ condition: (E) -> Bool) -> RxSwift.Observable<Element>
}

extension Driver {

    public func assert(message: String = default, _ condition: (Event<E>) -> Bool) -> RxCocoa.Driver<Element>

    public func assertNext(message: String = default, _ condition: (E) -> Bool) -> RxCocoa.Driver<Element>
}
```

- Sample1

```swift
name
  .assertNext("invalid name") { $0 != "muukii" }
  .subscribe()
```

- Sample2

```swift
name
  .assert("Don't send error") { event in
    if case .Error = event {
      return false
    }
    return true
  }
  .subscribe()
```

## Requirements

## Installation

RxAssert is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RxAssert"
```

## Author

muukii, m@muukii.me

## License

RxAssert is available under the MIT license. See the LICENSE file for more info.
