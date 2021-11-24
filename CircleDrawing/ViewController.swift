//
//  ViewController.swift
//  CircleDrawing
//
//  Created by Huiyi Tang on 9/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    //var currentCircleCenter = CGPoint.zero
    
    var currentCircle: Circle?
    var circleCanvas: CircleView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        circleCanvas = CircleView(frame: view.frame)
        view.addSubview(circleCanvas)
    }

    @IBAction func clearStuff(_ sender: Any) {
        circleCanvas.theCircle = nil
        circleCanvas.circles = []
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touchPoint = (touches.first)!.location(in: view) as CGPoint
        
        currentCircle = Circle(center: touchPoint, radius: 0)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touchPoint = (touches.first)!.location(in: view) as CGPoint
   
        let distance = Functions.distance(a: touchPoint, b: (currentCircle?.center)!)
        
        currentCircle?.radius = distance
        circleCanvas.theCircle = currentCircle  //the movement I move this thing, I'm going to set the circle associated with circleCanvas to be the current circle
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let newCircle = currentCircle {
            circleCanvas.circles.append(newCircle)
        }
    }
}

