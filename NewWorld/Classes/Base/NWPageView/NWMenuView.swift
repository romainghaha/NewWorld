//
//  NWMenuView.swift
//  NewWorld
//
//  Created by John on 2020/4/2.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class NWMenuView: UIView {
    
    fileprivate var titles: [String]

    init(frame: CGRect, titles:[String]) {
        self.titles = titles
        super.init(frame: frame)
        backgroundColor = UIColor.random_color()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
