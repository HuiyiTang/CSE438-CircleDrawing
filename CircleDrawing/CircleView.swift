//
//  CircleView.swift
//  CircleDrawing
//
//  Created by Huiyi Tang on 9/28/21.
//

import UIKit

class CircleView: UIView {
    
    //draw particular cicle
    var theCircle:Circle? {
        didSet {
            setNeedsDisplay()
        }
    }
    
    //array of circles
    var circles: [Circle] = [] {
        didSet {
            setNeedsDisplay()
        }
    }
    
    func drawCircle(_ circle:Circle) {
        UIColor.green.setFill()
        
        //Radius
        let path = UIBezierPath()
        
        path.addArc(withCenter: circle.center, radius: circle.radius, startAngle: 0, endAngle: CGFloat(Float.pi*2), clockwise: true)
        path.fill()
        
        UIColor.black.setStroke()
        path.stroke()s
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        for circle in circles {
            drawCircle(circle)
        }
        
        if (theCircle != nil) {
            drawCircle(theCircle!)
        }
    }
    

}
