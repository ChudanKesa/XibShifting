//
//  ViewController.swift
//  XibShiftingTest
//
//  Created by Erwan Le Querré on 23/05/2018.
//  Copyright © 2018 Erwan Le Querré. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Outlets
    
    @IBOutlet var rectangleView: UIView!
    @IBAction func leftButtonTouched(_ sender: UIButton) {
        removeAllSubviews(of: rectangleView)
        setViewFrame(of: view1)
        rectangleView.addSubview(view1)
    }
    @IBAction func centerButtonTouched(_ sender: UIButton) {
        removeAllSubviews(of: rectangleView)
        setViewFrame(of: view2)
        rectangleView.addSubview(view2)
    }
    @IBAction func rightButtonTouched(_ sender: UIButton) {
        removeAllSubviews(of: rectangleView)
        setViewFrame(of: view3)
        rectangleView.addSubview(view3)
    }
    
    // MARK: - Variables
    
    private lazy var view1 = View1()
    private lazy var view2 = View2()
    private lazy var view3 = View3()
    
    // MARK: - Configuration
    
    private func removeAllSubviews(of view: UIView) {
        for subviews in view.subviews {
            subviews.removeFromSuperview()
        }
    }
    
    private func setViewFrame(of view: UIView) {
        view.frame = rectangleView.frame
        view.frame.origin.x = 0
        view.frame.origin.y = 0
    }
}

