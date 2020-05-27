//
//  TextBox.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/23/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct TextBox: View {
    @State var height: CGFloat = 0
    @State var width: CGFloat = 0
    private var text: String

    init(_ text: String) {
        self.text = text
    }

    
    var body: some View {
        
        VStack {
            customRec(height: $height, width: $width).frame(width: width, height: height)
            Text("\(height)")
            Text(self.text).background(GeometryReader { geo in
    Color(slate)
                    .onAppear{
                    self.height = geo.size.height/5
                        self.width = geo.size.width/5
                }
            })
        }
    }
}

struct TextBox_Previews: PreviewProvider {
    static var previews: some View {
        TextBox("""
Erat pro consequuntur mel commodo vivendo in enim populo eu at in soluta
Erat pro consequv
Erat pro consequuntur mel commodo vivendo in enim populo eu at in soluta

Erat pro consequuntur mel commodo vivendo in enim populo eu at in soluta

""")
    }
}

//struct customShape: Shape {
//    func path(in rect: CGRect) -> Path {
//        let context = UIGraphicsGetCurrentContext()
//
//        let line = UIBezierPath()
//        line.move(to: CGPoint(x: 17.44, y: 4.9))
//        line.addLine(to: CGPoint(x: 14.48, y: 2.23))
//        line.addCurve(to: CGPoint(x: 2.23, y: 2.86), controlPoint1: CGPoint(x: 10.92, y: -0.97), controlPoint2: CGPoint(x: 5.44, y: -0.69))
//        line.addCurve(to: CGPoint(x: 1.07, y: 12.84), controlPoint1: CGPoint(x: -0.24, y: 5.6), controlPoint2: CGPoint(x: -0.71, y: 9.6))
//        line.addLine(to: CGPoint(x: 1.07, y: 12.84))
//        line.addLine(to: CGPoint(x: 1.07, y: 12.84))
//        line.addLine(to: CGPoint(x: 17.44, y: 31.93))
//        line.addLine(to: CGPoint(x: 34.05, y: 12.84))
//        line.addCurve(to: CGPoint(x: 29.71, y: 0.96), controlPoint1: CGPoint(x: 36.13, y: 8.36), controlPoint2: CGPoint(x: 34.19, y: 3.05))
//        line.addCurve(to: CGPoint(x: 19.66, y: 2.71), controlPoint1: CGPoint(x: 26.33, y: -0.61), controlPoint2: CGPoint(x: 22.32, y: 0.09))
//        line.addLine(to: CGPoint(x: 17.44, y: 4.9))
//        line.addLine(to: CGPoint(x: 17.44, y: 4.9))
//        line.close()
//        context?.saveGState()
//        context?.translateBy(x: 128.5, y: 110.5)
//        line.lineCapStyle = .square
//        line.lineWidth = 1
//        UIColor(white: 0.592, alpha: 1).setStroke()
//        line.stroke()
//        context?.restoreGState()
//
//        context?.restoreGState()
//
//
//
//
//
//        return Path(line.cgPath)
//    }
//}

struct customRec: Shape {
    @Binding var height: CGFloat
    @Binding var width: CGFloat
    func path(in rect: CGRect) -> Path {
        let context = UIGraphicsGetCurrentContext()
      let rectangle = UIBezierPath()
              rectangle.move(to: CGPoint(x: 39.54, y: 20.58))
              rectangle.addLine(to: CGPoint(x: 39.54, y: 0))
              rectangle.addLine(to: CGPoint(x: 39.54, y: 0))
              rectangle.addLine(to: CGPoint(x: 286, y: 0))
              rectangle.addCurve(to: CGPoint(x: 304, y: 18), controlPoint1: CGPoint(x: 295.94, y: 0), controlPoint2: CGPoint(x: 304, y: 8.06))
              rectangle.addLine(to: CGPoint(x: 304, y: 134))
              rectangle.addCurve(to: CGPoint(x: 286, y: 152), controlPoint1: CGPoint(x: 304, y: 143.94), controlPoint2: CGPoint(x: 295.94, y: 152))
              rectangle.addLine(to: CGPoint(x: 18, y: 152))
              rectangle.addCurve(to: CGPoint(x: 0, y: 134), controlPoint1: CGPoint(x: 8.06, y: 152), controlPoint2: CGPoint(x: 0, y: 143.94))
              rectangle.addLine(to: CGPoint(x: 0, y: 38.58))
              rectangle.addLine(to: CGPoint(x: 0, y: 38.58))
              rectangle.addLine(to: CGPoint(x: 21.54, y: 38.58))
              rectangle.addCurve(to: CGPoint(x: 39.54, y: 20.58), controlPoint1: CGPoint(x: 31.48, y: 38.58), controlPoint2: CGPoint(x: 39.54, y: 30.52))
              rectangle.close()
              context?.saveGState()
              context?.translateBy(x: 31, y: 195)
              rectangle.usesEvenOddFillRule = true
              UIColor(white: 0.847, alpha: 1).setFill()
              rectangle.fill()
              context?.saveGState()
              rectangle.lineWidth = 2
              context?.beginPath()
              context?.addPath(rectangle.cgPath)
              context?.clip(using: .evenOdd)
              UIColor(white: 0.592, alpha: 1).setStroke()
              rectangle.stroke()
              context?.restoreGState()
              context?.restoreGState()
              
              context?.restoreGState()
        
        return Path(rectangle.cgPath)
    }
}
