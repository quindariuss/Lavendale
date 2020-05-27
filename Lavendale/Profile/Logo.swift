//
//  Logo.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/25/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        ZStack {
            rightVector().offset(y:-70).fill(Color(lightPeriwinkle))
             leftVector().offset(x:305).fill(Color(lightPeriwinkle))
            centerVector().fill(Color(blueyGrey))
           
        }.frame(width: 335, height: 277).padding(.top, 70)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}

struct rightVector: Shape {
    let context = UIGraphicsGetCurrentContext()
    func path(in rect: CGRect) -> Path {
          let rightVector = UIBezierPath()
               rightVector.move(to: CGPoint(x: 27, y: 220))
               rightVector.addLine(to: CGPoint(x: 27, y: 6))
               rightVector.addCurve(to: CGPoint(x: 21, y: 0), controlPoint1: CGPoint(x: 27, y: 2.69), controlPoint2: CGPoint(x: 24.31, y: 0))
               rightVector.addLine(to: CGPoint(x: 6, y: 0))
               rightVector.addCurve(to: CGPoint(x: 0, y: 6), controlPoint1: CGPoint(x: 2.69, y: 0), controlPoint2: CGPoint(x: 0, y: 2.69))
               rightVector.addLine(to: CGPoint(x: 0, y: 220))
               rightVector.addLine(to: CGPoint(x: 0, y: 220))
               rightVector.addLine(to: CGPoint(x: 27, y: 220))
               rightVector.close()
               context?.saveGState()
               rightVector.usesEvenOddFillRule = true
               UIColor(hue: 0.6, saturation: 0.105, brightness: 0.929, alpha: 1).setFill()
               rightVector.fill()
               context?.restoreGState()
        return Path(rightVector.cgPath)
    }
         
}

struct leftVector: Shape{
    let context = UIGraphicsGetCurrentContext()
    func path(in rect: CGRect) -> Path {
                    let leftVector = UIBezierPath()
        leftVector.move(to: CGPoint(x: 28, y: 271))
        leftVector.addLine(to: CGPoint(x: 28, y: 6))
        leftVector.addCurve(to: CGPoint(x: 22, y: 0), controlPoint1: CGPoint(x: 28, y: 2.69), controlPoint2: CGPoint(x: 25.31, y: 0))
        leftVector.addLine(to: CGPoint(x: 6, y: 0))
        leftVector.addCurve(to: CGPoint(x: 0, y: 6), controlPoint1: CGPoint(x: 2.69, y: 0), controlPoint2: CGPoint(x: 0, y: 2.69))
        leftVector.addLine(to: CGPoint(x: 0, y: 271))
        leftVector.addCurve(to: CGPoint(x: 6, y: 277), controlPoint1: CGPoint(x: 0, y: 274.31), controlPoint2: CGPoint(x: 2.69, y: 277))
        leftVector.addLine(to: CGPoint(x: 22, y: 277))
        leftVector.addCurve(to: CGPoint(x: 28, y: 271), controlPoint1: CGPoint(x: 25.31, y: 277), controlPoint2: CGPoint(x: 28, y: 274.31))
        leftVector.close()
        context?.saveGState()
        context?.translateBy(x: 305, y: 70)
        leftVector.usesEvenOddFillRule = true
        UIColor(hue: 0.6, saturation: 0.105, brightness: 0.929, alpha: 1).setFill()
        leftVector.fill()
        context?.restoreGState()
        return Path(leftVector.cgPath)
    }
}

struct centerVector: Shape {
    let context = UIGraphicsGetCurrentContext()
    func path(in rect: CGRect) -> Path {
           let centerVector = UIBezierPath()
                 centerVector.move(to: CGPoint(x: 0, y: 150.66))
                 centerVector.addLine(to: CGPoint(x: 27.73, y: 124.65))
                 centerVector.addLine(to: CGPoint(x: 151.32, y: 124.65))
                 centerVector.addLine(to: CGPoint(x: 151.32, y: 6))
                 centerVector.addCurve(to: CGPoint(x: 157.32, y: 0), controlPoint1: CGPoint(x: 151.32, y: 2.69), controlPoint2: CGPoint(x: 154.01, y: 0))
                 centerVector.addLine(to: CGPoint(x: 172.9, y: 0))
                 centerVector.addCurve(to: CGPoint(x: 178.9, y: 6), controlPoint1: CGPoint(x: 176.21, y: 0), controlPoint2: CGPoint(x: 178.9, y: 2.69))
                 centerVector.addLine(to: CGPoint(x: 178.9, y: 124.65))
                 centerVector.addLine(to: CGPoint(x: 178.9, y: 124.65))
                 centerVector.addLine(to: CGPoint(x: 333, y: 124.65))
                 centerVector.addLine(to: CGPoint(x: 305.03, y: 150.66))
                 centerVector.addLine(to: CGPoint(x: 178.9, y: 150.66))
                 centerVector.addLine(to: CGPoint(x: 178.9, y: 271))
                 centerVector.addCurve(to: CGPoint(x: 172.9, y: 277), controlPoint1: CGPoint(x: 178.9, y: 274.31), controlPoint2: CGPoint(x: 176.21, y: 277))
                 centerVector.addLine(to: CGPoint(x: 157.32, y: 277))
                 centerVector.addCurve(to: CGPoint(x: 151.32, y: 271), controlPoint1: CGPoint(x: 154.01, y: 277), controlPoint2: CGPoint(x: 151.32, y: 274.31))
                 centerVector.addLine(to: CGPoint(x: 151.32, y: 150.66))
                 centerVector.addLine(to: CGPoint(x: 151.32, y: 150.66))
                 centerVector.addLine(to: CGPoint(x: 0, y: 150.66))
                 centerVector.close()
                 context?.saveGState()
                 context?.translateBy(x: 0, y: 70)
                 centerVector.usesEvenOddFillRule = true
                 UIColor(hue: 0.617, saturation: 0.154, brightness: 0.686, alpha: 1).setFill()
                 centerVector.fill()
                 context?.restoreGState()
                 
                 context?.restoreGState()
        return Path(centerVector.cgPath)
    }
}
