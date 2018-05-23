//
//  View1.swift
//  XibShiftingTest
//
//  Created by Erwan Le Querré on 23/05/2018.
//  Copyright © 2018 Erwan Le Querré. All rights reserved.
//

import UIKit

class View1: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("View1", owner: self, options: nil)
        addSubview(view1)
        view1.frame = self.bounds
        view1.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

    @IBOutlet var view1: UIView!
}
