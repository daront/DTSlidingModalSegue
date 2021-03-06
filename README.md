DTSlidingModalSegue
===========

[![Badge w/ Version](http://cocoapod-badges.herokuapp.com/v/DTSlidingModalSegue/badge.png)](http://cocoadocs.org/docsets/DTSlidingModalSegue)
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)](http://mit-license.org)
[![Platform](https://img.shields.io/cocoapods/p/DTSlidingModalSegue.svg?style=flat)](http://cocoadocs.org/docsets/DTSlidingModalSegue)

User this segue to present a view controller modally in a UINavigationController(push) style - sliding left or right.

Try demo project for more info.

## System Requirements
iOS 8.0+, Swift 3.0

## Installation

### CocoaPods

Add into your Podfile.

```:Podfile
pod "DTSlidingModalSegue"
```

Then `$ pod install`

## How to use

**present** -
In your storyboard, just assign a class `DTSlidingLeftSegue` or `DTSlidingRightSegue` to a segue.

**unwind** -
To dismiss a viewController, you need to create an unwind segue and assign it with a class `DTSlidingLeftUnwindSegue` or `DTSlidingLeftUnwindSegue`.

Note: in iOS8 and below, you might need to override `segueForUnwindingToViewController`

```swift
override func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue? {
    return DTSlidingRightUnwindSegue(identifier: identifier, source: fromViewController, destination: toViewController)
}
```

If you don't know wtx is unwind segue, please take a look at this link
http://stackoverflow.com/questions/12561735/what-are-unwind-segues-for-and-how-do-you-use-them

## Author

**Daron Tancharoen**

- CONTACTS:
  - [Email](daront@gmail.com)

## License
DTLoadingIndicator is licensed under the MIT License, please see the [LICENSE](LICENSE) file.

