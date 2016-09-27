//
//  ColorNode.swift
//  ASDK-PagerNode
//
//  Created by Son, Joon on 9/26/16.
//

import Foundation
import AsyncDisplayKit

class ColorCellNode: ASCellNode {
    init(color: UIColor) {
        super.init()
        backgroundColor = color
    }
    
    override func calculateSizeThatFits(constrainedSize: CGSize) -> CGSize {
        let side = min(constrainedSize.width, constrainedSize.height)
        let size = CGSize(width: side, height: side)
        print("size \(size)")
        return size
    }
}
