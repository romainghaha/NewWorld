//
//  NWContentView.swift
//  NewWorld
//
//  Created by John on 2020/4/2.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class NWContentView: UIView {

    fileprivate var childVcs: [UIViewController]
    fileprivate var parentVc: UIViewController
    
    init(frame: CGRect, childVcs:[UIViewController], parentVc:UIViewController) {
        self.childVcs = childVcs
        self.parentVc = parentVc
        super.init(frame: frame)
        backgroundColor = UIColor.random_color()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
