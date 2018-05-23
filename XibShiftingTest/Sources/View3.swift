//
//  View3.swift
//  XibShiftingTest
//
//  Created by Erwan Le Querré on 23/05/2018.
//  Copyright © 2018 Erwan Le Querré. All rights reserved.
//

import UIKit

class View3: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("View3", owner: self, options: nil)
        addSubview(view3)
        view3.frame = self.bounds
        view3.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    @IBOutlet var view3: UIView!
}
