//
//  BSBaseVC.swift
//  BSBassSet
//
//  Created by administrator on 2018/9/29.
//  Copyright © 2018 lixiezhuang. All rights reserved.
//

import UIKit

open class BSBaseViewController: UIViewController ,UIGestureRecognizerDelegate{
    
    //导航栏手势 true可手势返回 ,falas不可手势返回
    open var backGestureRecognizer: Bool = true

    
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets  = false;
        let target = self.navigationController?.interactivePopGestureRecognizer!.delegate
        let backPan = UIPanGestureRecognizer(target: target, action: (Selector(("handleNavigationTransition:"))))
        backPan.delegate = self
        self.view.addGestureRecognizer(backPan)
        self.navigationController?.interactivePopGestureRecognizer!.isEnabled = false
        self.view.backgroundColor = UIColor.init(red: 246, green: 246, blue: 246, alpha: 1)
        initUI()
        // Do any additional setup after loading the view.
    }
    
    open func initUI(){
        
    }
    
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if self.navigationController?.viewControllers.count == 1 {
            return false
        }else{
            return backGestureRecognizer
        }
    }
    
    
    
    override open var shouldAutorotate: Bool {
        return true
    }
    
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .portrait
    }
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
