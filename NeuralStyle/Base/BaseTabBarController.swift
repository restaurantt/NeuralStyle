//
//  BaseTabBarController.swift
//  NeuralStyle
//
//  Created by Gu Jiajun on 2017/7/4.
//  Copyright © 2017年 gjj. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class BaseTabBarController: ESTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let vc0 = HomeViewController()
        let vc1 = MeViewController()
        
        vc0.tabBarItem = ESTabBarItem.init(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        vc1.tabBarItem = UITabBarItem.init(title: "Me", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        
        let navi0 = BaseNavigationController.init(rootViewController: vc0)
        let navi1 = BaseNavigationController.init(rootViewController: vc1)
        
        self.viewControllers = [navi0, navi1]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
