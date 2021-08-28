//
//  Logo.swift
//  Logo
//
//  Created by Programmer on 8/28/21.
//

import UIKit

class Logo: UIView {

    override func draw(_ rect: CGRect) {
        let externalRadius = self.frame.height
        let internalRadius = self.frame.height - self.frame.height / 2 * 0.60
        
        let path = UIBezierPath()
        // to add a shift is the easiest solution to rotate the figure
        let shiftX = externalRadius * cos(5) + rect.maxX
        let shiftY = externalRadius * sin(5) + rect.midY
        path.move(to: CGPoint(x: shiftX , y: shiftY ) )
        var count = 0
        for i in stride(from: 7.5, to: 367.5, by: 7.5){
            let degreeMetric = i * Double.pi / 180
            let externalX = externalRadius * cos(CGFloat(degreeMetric)) + rect.maxX
            let externalY = externalRadius * sin(CGFloat(degreeMetric)) + rect.maxY
            
            let internalX = internalRadius * cos(CGFloat(degreeMetric)) + rect.maxX
            let internalY = internalRadius * sin(CGFloat(degreeMetric)) + rect.maxY
            
            if count % 2 == 0 {
                count += 1
            path.addLine(to: CGPoint(x: externalX, y: externalY ))
                path.stroke()
            }else{
                count += 1
                path.addLine(to: CGPoint(x: internalX , y: internalY ))
                path.stroke()
            }
            
        }
        
       
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
       
        // I need the transform method to match first and last teeth line in the real log
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


