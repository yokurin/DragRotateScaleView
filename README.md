# DragRotateScaleView

Draggable, Rotatable, Scalable View

<!--[![CI Status](https://img.shields.io/travis/yokurin/DragRotateScaleView.svg?style=flat)](https://travis-ci.org/yokurin/DragRotateScaleView)-->
[![Version](https://img.shields.io/cocoapods/v/DragRotateScaleView.svg?style=flat)](https://cocoapods.org/pods/DragRotateScaleView)
[![License](https://img.shields.io/cocoapods/l/DragRotateScaleView.svg?style=flat)](https://cocoapods.org/pods/DragRotateScaleView)
[![Platform](https://img.shields.io/cocoapods/p/DragRotateScaleView.svg?style=flat)](https://cocoapods.org/pods/DragRotateScaleView)

<div align="center"><img src="./Capture/demo.gif" width="400px"></div>

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Open `Example/DragRotateScaleView.xcworkspace` and run `DragRotateScaleView-Example` to see a simple demonstration.

## DragRotateScaleViewDelegate

```swift
protocol DragRotateScaleViewDelegate: class {
    func willPanGesture(_ sender: UIPanGestureRecognizer, view: DragRotateScaleView)
    func didPanGesture(_ sender: UIPanGestureRecognizer, view: DragRotateScaleView)

    func willPinchGesture(_ sender: UIPinchGestureRecognizer, view: DragRotateScaleView)
    func didPinchGesture(_ sender: UIPinchGestureRecognizer, view: DragRotateScaleView)

    func willRotateGesture(_ sender: UIRotationGestureRecognizer, view: DragRotateScaleView)
    func didRotateGesture(_ sender: UIRotationGestureRecognizer, view: DragRotateScaleView)

    func doubleTapGesture(_ sender: UITapGestureRecognizer, view: DragRotateScaleView)

    func longPressGesture(_ sender: UILongPressGestureRecognizer, view: DragRotateScaleView)
}
```

## Requirements

- iOS 8.0+
- Xcode 10.0+
- Swift 4.2+

## Installation

DragRotateScaleView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DragRotateScaleView'
```

## Author

Tsubasa Hayashi, yoku.rin.99@gmail.com

## License

DragRotateScaleView is available under the MIT license. See the LICENSE file for more info.
