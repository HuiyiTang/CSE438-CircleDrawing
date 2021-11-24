//
//  Functions.swift
//  CircleDrawing
//
//  Created by Huiyi Tang on 9/28/21.
//

import UIKit

class Functions {
    
    static func distance(a: CGPoint, b: CGPoint) -> CGFloat {
        return sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2))
    }
}
