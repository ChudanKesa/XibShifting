//
//  View2.swift
//  XibShiftingTest
//
//  Created by Erwan Le Querré on 23/05/2018.
//  Copyright © 2018 Erwan Le Querré. All rights reserved.
//

import UIKit

class View2: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("View2", owner: self, options: nil)
        addSubview(view2)
        view2.frame = self.bounds
        view2.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    @IBOutlet var view2: View2!
    
}
