//
//  MainViewController.swift
//  ASDK-PagerNode
//
//  Created by Son, Joon on 9/26/16.
//

import Foundation
import UIKit

class MainViewController: UISplitViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let detailVC = UINavigationController(nibName: nil, bundle: nil)
        detailVC.view.backgroundColor = .redColor()
        
        viewControllers = [PresentingViewController(), detailVC]
    }
}
