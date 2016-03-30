//
//  NewImageView.swift
//  lap4
//
//  Created by Dam Vu Duy on 3/30/16.
//  Copyright © 2016 mac. All rights reserved.
//

import UIKit

class NewImageView: UIImageView {
    var originalScale: CGFloat = 1 {
        didSet {
//            self.transform = CGAffineTransformMakeScale(originalScale, originalScale)
            self.transform = CGAffineTransformScale(self.transform, originalScale, originalScale)
        }
    }
    
    func backToOriginalScale() {
        self.transform = CGAffineTransformMakeScale(originalScale, originalScale)
//        self.transform = CG(originalScale, originalScale)
    }
}
