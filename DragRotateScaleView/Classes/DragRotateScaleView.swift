//
//  DragRotateScaleView.swift
//  DragRotateScaleView
//
//  Created by Tsubasa Hayashi on 2018/09/20.
//

import UIKit

public class DragRotateScaleView: UIView {

    public weak var delegate: DragRotateScaleViewDelegate?

    public private(set) var rotation: CGFloat = 0

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupGesture()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupGesture()
    }

    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        moveToFront()
    }

    private func setupGesture() {
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(pinchGesture(_:)))
        let rotateGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(rotateGesture(_:)))
        let doubleTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(doubleTapGesture(_:)))
        doubleTapGestureRecognizer.numberOfTapsRequired = 2
        let longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longPressGesture(_:)))
        addGestureRecognizer(panGestureRecognizer)
        addGestureRecognizer(pinchGestureRecognizer)
        addGestureRecognizer(rotateGestureRecognizer)
        addGestureRecognizer(doubleTapGestureRecognizer)
        addGestureRecognizer(longPressGestureRecognizer)
    }

    @objc
    func panGesture(_ sender: UIPanGestureRecognizer) {
        delegate?.willPanGesture(sender, view: self)
        let move = sender.translation(in: self)
        transform = transform.translatedBy(x: move.x, y: move.y)
        sender.setTranslation(CGPoint.zero, in: self)
        delegate?.didPanGesture(sender, view: self)
    }

    @objc
    func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        delegate?.willPinchGesture(sender, view: self)
        transform = transform.scaledBy(x: sender.scale, y: sender.scale)
        delegate?.didPinchGesture(sender, view: self)
        sender.scale = 1
    }

    @objc
    func rotateGesture(_ sender: UIRotationGestureRecognizer) {
        delegate?.willRotateGesture(sender, view: self)
        rotation += sender.rotation
        transform = transform.rotated(by: sender.rotation)
        delegate?.didRotateGesture(sender, view: self)
        sender.rotation = 0
    }

    @objc
    func doubleTapGesture(_ sender: UITapGestureRecognizer) {
        delegate?.doubleTapGesture(sender, view: self)
    }

    @objc
    func longPressGesture(_ sender: UILongPressGestureRecognizer) {
        delegate?.longPressGesture(sender, view: self)
    }

    private func moveToFront() {
        superview?.bringSubview(toFront: self)
    }

    public func rotated(by deg: CGFloat) {
        transform = transform.rotated(by: deg)
        rotation += deg
    }
}


