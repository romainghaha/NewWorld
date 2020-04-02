//
//  NWPageView.swift
//  NewWorld
//
//  Created by John on 2020/4/2.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class NWPageView: UIView {

    fileprivate var titles: [String]
    fileprivate var childVcs: [UIViewController]
    fileprivate var parentVc: UIViewController
    fileprivate var style: NWMenuStyle
    fileprivate var menuView: NWMenuView!
    
    init(frame: CGRect, titles: [String], childVcs:[UIViewController], parentVc: UIViewController, style: NWMenuStyle) {
        self.titles = titles
        self.childVcs = childVcs
        self.style = style
        self.parentVc = parentVc
        super.init(frame: frame)
        
        setupMenuView()
        setupContentView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension NWPageView {
    fileprivate func setupMenuView() {
        let menuFrame = CGRect(x: 0, y: 0, width: Int(bounds.width), height: style.menuHeight)
        let menuView = NWMenuView(frame: menuFrame, titles: self.titles)
        self.menuView = menuView
        addSubview(menuView)
    }
    
    fileprivate func setupContentView() {
        let contentFrame = CGRect(x: 0, y: style.menuHeight, width: Int(bounds.width), height: Int(bounds.height)-style.menuHeight)
        let contentView = NWContentView(frame: contentFrame, childVcs: self.childVcs, parentVc: parentVc)
        addSubview(contentView)
    }
}
