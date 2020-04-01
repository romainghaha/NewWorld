//
//  TabBarController.swift
//  NewWorld
//
//  Created by John on 2020/4/1.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        addChildControllers()
    }

}

// MARK:设置UI
extension TabBarController {
    fileprivate func setupUI() {
        self.tabBar.tintColor = UIColor.orange
        self.tabBar.barTintColor = UIColor .black
    }
}

// MARK:添加子控制器
extension TabBarController {
    fileprivate func addChildControllers() {
        configChildViewController(childVC: HomeViewController(), childTitle: "首页", imageName: "home", selectImage: "home", index: 0)
        configChildViewController(childVC: RankViewController(), childTitle: "排行", imageName: "rank", selectImage: "rank", index: 1)
        configChildViewController(childVC: DiscoverViewController(), childTitle: "发现", imageName: "found", selectImage: "found", index: 2)
        configChildViewController(childVC: ProfileViewController(), childTitle: "我的", imageName: "mine", selectImage: "mine", index: 3)
    }
    
    private func configChildViewController(childVC:UIViewController, childTitle:String, imageName:String, selectImage:String, index:Int) {
        let navigation = UINavigationController(rootViewController: childVC)
        childVC.title = title;
        childVC.tabBarItem.tag = index
        childVC.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childVC.tabBarItem.selectedImage = UIImage(named: selectImage)
        addChild(navigation)
    }
}
