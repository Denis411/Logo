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
        let radiusForCurves = self.frame.height * 0.9
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.maxX , y: rect.maxY))
        var count = 0
        for i in stride(from: 7.5, to: 367.5, by: 7.5){
            let degreeMetric = i * Double.pi / 180
            
            let externalX = externalRadius * cos(CGFloat(degreeMetric)) + rect.maxX
            let externalY = externalRadius * sin(CGFloat(degreeMetric)) + rect.maxY
            
            let internalX = internalRadius * cos(CGFloat(degreeMetric)) + rect.maxX
            let internalY = internalRadius * sin(CGFloat(degreeMetric)) + rect.maxY
            
            let curveOneX = radiusForCurves * cos(CGFloat(degreeMetric - 0.1)) + rect.maxX
            let curveOneY = radiusForCurves * sin(CGFloat(degreeMetric - 0.1)) + rect.maxY
            
            let curveTwoX = radiusForCurves * cos(CGFloat(degreeMetric - 0.15)) + rect.maxX
            let curveTwoY = radiusForCurves * sin(CGFloat(degreeMetric - 0.15)) + rect.maxY
            
            if count % 2 == 0 {
                count += 1
                // MARK: Visualization of control points (curveOne)
//                let view: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 3, height: 3))
//                view.backgroundColor = .red
//                view.center = CGPoint(x: curveOneX, y: curveOneY)
//                self.addSubview(view)
                //
                path.addQuadCurve(to: CGPoint(x: externalX, y: externalY ), controlPoint: CGPoint(x: curveOneX, y: curveOneY))
            }else{
                count += 1
                // MARK: Visualization of control points (curveTwo)
//                let view: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 3, height: 3))
//                view.backgroundColor = .red
//                view.center = CGPoint(x: curveTwoX, y: curveTwoY)
//                self.addSubview(view)
                path.addQuadCurve(to: CGPoint(x: internalX , y: internalY ), controlPoint: CGPoint(x: curveTwoX, y: curveTwoY))
            }
        }
        UIColor.white.setFill()
        path.addArc(withCenter: CGPoint(x: rect.maxX, y: rect.maxY), radius: self.frame.height / 1.7, startAngle: 0, endAngle: 360, clockwise: false)
        path.usesEvenOddFillRule = true
        path.fill()
       // path.stroke()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


