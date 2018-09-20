//
//  DragRotateScaleViewDelegate.swift
//  DragRotateScaleView
//
//  Created by Tsubasa Hayashi on 2018/09/20.
//

import UIKit

public protocol DragRotateScaleViewDelegate: class {
    func willPanGesture(_ sender: UIPanGestureRecognizer, view: DragRotateScaleView)
    func didPanGesture(_ sender: UIPanGestureRecognizer, view: DragRotateScaleView)

    func willPinchGesture(_ sender: UIPinchGestureRecognizer, view: DragRotateScaleView)
    func didPinchGesture(_ sender: UIPinchGestureRecognizer, view: DragRotateScaleView)

    func willRotateGesture(_ sender: UIRotationGestureRecognizer, view: DragRotateScaleView)
    func didRotateGesture(_ sender: UIRotationGestureRecognizer, view: DragRotateScaleView)

    func doubleTapGesture(_ sender: UITapGestureRecognizer, view: DragRotateScaleView)

    func longPressGesture(_ sender: UILongPressGestureRecognizer, view: DragRotateScaleView)
}

public extension DragRotateScaleViewDelegate {
    func willPanGesture(_ sender: UIPanGestureRecognizer, view: DragRotateScaleView) {}
    func didPanGesture(_ sender: UIPanGestureRecognizer, view: DragRotateScaleView) {}

    func willPinchGesture(_ sender: UIPinchGestureRecognizer, view: DragRotateScaleView) {}
    func didPinchGesture(_ sender: UIPinchGestureRecognizer, view: DragRotateScaleView) {}

    func willRotateGesture(_ sender: UIRotationGestureRecognizer, view: DragRotateScaleView) {}
    func didRotateGesture(_ sender: UIRotationGestureRecognizer, view: DragRotateScaleView) {}

    func doubleTapGesture(_ sender: UITapGestureRecognizer, view: DragRotateScaleView) {}

    func longPressGesture(_ sender: UILongPressGestureRecognizer, view: DragRotateScaleView) {}
}
