//
//  PresentingViewController.swift
//  ASDK-PagerNode
//
//  Created by Son, Joon on 9/26/16.
//

import Foundation
import AsyncDisplayKit

class PresentingViewController: ASViewController {
    override var node: ASCollectionNode {
        return super.node as! ASCollectionNode
    }
    let colorArray: [UIColor] = [
        .blueColor(), .redColor(), .brownColor(), .yellowColor(),
        .greenColor(), .cyanColor(), .magentaColor(), .orangeColor()
    ]
    let layout: UICollectionViewFlowLayout
    
    init() {
        let layout = UICollectionViewFlowLayout()
        self.layout = layout
        
        super.init(node: ASCollectionNode(collectionViewLayout: layout))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        node.delegate = self
        node.dataSource = self
    }
}

extension PresentingViewController: ASCollectionDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func collectionView(collectionView: ASCollectionView, nodeForItemAtIndexPath indexPath: NSIndexPath) -> ASCellNode {
        return ColorCellNode(color: colorArray[indexPath.row])
    }
}

extension PresentingViewController: ASCollectionDelegate {
    
}
