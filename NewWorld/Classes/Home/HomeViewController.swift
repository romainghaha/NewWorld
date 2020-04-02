//
//  HomeViewController.swift
//  NewWorld
//
//  Created by John on 2020/4/1.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titles = ["游戏", "娱乐", "趣玩", "美女", "颜值"]
        var childVcs = [UIViewController]()
        
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.random_color()
            childVcs.append(vc)
        }
        
        let pageFrame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        let pageView = NWPageView(frame: pageFrame, titles: titles, childVcs: childVcs, parentVc: self, style: NWMenuStyle())
        view.addSubview(pageView)
    }

}
