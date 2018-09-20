//
//  ViewController.swift
//  DragRotateScaleView
//
//  Created by yokurin on 09/20/2018.
//  Copyright (c) 2018 yokurin. All rights reserved.
//

import UIKit
import DragRotateScaleView

final class ViewController: UIViewController {

    lazy var rect1: DragRotateScaleView = {
        let v = DragRotateScaleView(frame: CGRect(x: 20, y: 100, width: 200, height: 200))
        v.delegate = self
        v.backgroundColor = UIColor.cyan
        return v
    }()

    lazy var rect2: DragRotateScaleView = {
        let v = DragRotateScaleView(frame: CGRect(x: 100, y: 400, width: 100, height: 200))
        v.delegate = self
        v.backgroundColor = UIColor.red
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(rect1)
        view.addSubview(rect2)
    }
}

extension ViewController: DragRotateScaleViewDelegate {
    func doubleTapGesture(_ sender: UITapGestureRecognizer, view: DragRotateScaleView) {
        view.rotated(by: CGFloat.pi / 4)
    }
}
