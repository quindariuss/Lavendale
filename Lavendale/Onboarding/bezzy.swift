//
//  bezzy.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/16/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct bezzy: View {
    @State var choice = false
    var body: some View {
        ZStack{
         
            Rectangle().edgesIgnoringSafeArea(.all).foregroundColor(Color(paleGrey))
            VStack {
               
                HStack {
                    
                    Image("dots top left").edgesIgnoringSafeArea(.all).offset(x: 150, y: -130)
                }
                Spacer()
                Image("dots bottom right").offset(x: -220, y: 100)
            }
            VStack {
                   
                    
                logo().padding(.leading, 32.0).frame(height: 120).offset(x: 25, y: 20)
                
                line2().stroke(lineWidth: 3).fill(Color(palePeach)).frame(height: 100)
                      
                      

                      Spacer()
                line1(choice: $choice).stroke(lineWidth: 3).fill(Color(palePeach)).frame(height: 180).animation(.easeInOut(duration: 5))
                  }
            if !choice{VStack(alignment: .leading) {
              Text("Welcome to\nLavendale Health\n").font(.custom("Morjuis", size: 30)).kerning(1.75).animation(.easeInOut(duration: 1))
.onTapGesture {
                  self.choice.toggle()
              }
            
                Text("Connecting COVID-19 Patients\nwith compatible Blood Plasma Donors").font(.custom("Barlow-Light", size: 19)).foregroundColor(Color(dullBlue)).animation(.easeInOut(duration: 1))}
            
                
            }
            if choice {
            Q1()
            
            }
        }
      
        
    }
}

struct bezzy_Previews: PreviewProvider {
    static var previews: some View {
        bezzy()
    }
}

struct line1: Shape {
    @Binding var choice : Bool

    func path(in rect: CGRect) -> Path {
        let context = UIGraphicsGetCurrentContext()
        let path =  UIBezierPath()
               path.move(to: CGPoint(x: rect.minX-5, y: rect.minY))
        path.addCurve(to: CGPoint(x: 89.76, y:53.89), controlPoint1: CGPoint(x: 35.58, y: 26.23), controlPoint2: CGPoint(x: 65.5, y: 44.19))
        path.addCurve(to: CGPoint(x: choice ? 0 : 262.11, y: 91.21), controlPoint1: CGPoint(x: 180.55, y: 90.2), controlPoint2: CGPoint(x: 195.06, y: 59.73))
        path.addCurve(to: CGPoint(x: rect.maxX+5, y: 186), controlPoint1: CGPoint(x: 309.13, y: 113.28), controlPoint2: CGPoint(x: 345.42, y: 144.88))
        context?.saveGState()
        context?.translateBy(x: 12.5, y: 402.5)
               path.lineCapStyle = .square
               path.lineWidth = 3
               UIColor(hue: 0.106, saturation: 0.221, brightness: 0.922, alpha: 1).setStroke()
               path.stroke()
        context?.restoreGState()
        return Path(path.cgPath)
    
}

}

struct line2: Shape {

    func path(in rect: CGRect) -> Path {
        let context = UIGraphicsGetCurrentContext()
       let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.minX-5, y: 123))
              path.addCurve(to: CGPoint(x: 109.58, y: 39.52), controlPoint1: CGPoint(x: 45.31, y: 69.03), controlPoint2: CGPoint(x: 81.84, y: 41.2))
              path.addCurve(to: CGPoint(x: 193.68, y: 58.47), controlPoint1: CGPoint(x: 152.16, y: 36.92), controlPoint2: CGPoint(x: 165.13, y: 54.26))
              path.addCurve(to: CGPoint(x: 278.95, y: 48.05), controlPoint1: CGPoint(x: 230.73, y: 63.93), controlPoint2: CGPoint(x: 266.2, y: 53.78))
        path.addCurve(to: CGPoint(x: rect.maxX+5, y: 0), controlPoint1: CGPoint(x: 325.54, y: 27.1), controlPoint2: CGPoint(x: 356.23, y: 11.09))
        context?.saveGState()
        context?.translateBy(x: 12.5, y: -47.5)
              path.lineCapStyle = .square
              path.lineWidth = 3
              UIColor(hue: 0.106, saturation: 0.221, brightness: 0.922, alpha: 1).setStroke()
              path.stroke()
        context?.restoreGState()
        return Path(path.cgPath)
    
}

}


struct logopart1: Shape {

    func path(in rect: CGRect) -> Path {
        let context = UIGraphicsGetCurrentContext()
     let path = UIBezierPath()
            path.move(to: CGPoint.zero)
              path.addLine(to: CGPoint(x: 0, y: 28))
              path.addLine(to: CGPoint(x: 25.28, y: 28))
              path.addLine(to: CGPoint(x: 41.18, y: 28))
              path.addLine(to: CGPoint(x: 41.18, y: 6.43))
              path.addLine(to: CGPoint(x: 41.18, y: 57))
              path.addLine(to: CGPoint(x: 41.18, y: 28))
              path.addLine(to: CGPoint(x: 21.66, y: 28))
              path.addLine(to: CGPoint(x: 21.66, y: 45.29))
              path.addLine(to: CGPoint(x: 21.66, y: 9.1))
              context?.saveGState()
              context?.translateBy(x: 121.3, y: -134)
              path.lineCapStyle = .square
              path.lineWidth = 5
              UIColor(white: 0.2, alpha: 1).setStroke()
              path.stroke()
        context?.restoreGState()
        return Path(path.cgPath)
    
}

}
//struct logopart2: Shape {
//
//    func path(in rect: CGRect) -> Path {
//        let context = UIGraphicsGetCurrentContext()
//    let path = UIBezierPath()
//     path.move(to: CGPoint.zero)
//     path.addLine(to: CGPoint(x: 36, y: 0))
//        context?.saveGState()
//        context?.translateBy(x: 1, y: 26.5)
//     path.lineCapStyle = .square
//     path.lineWidth = 5
//     UIColor(white: 0.592, alpha: 1).setStroke()
//     path.stroke()
//        context?.restoreGState()
//        return Path(path.cgPath)
//
//}
//
//}


struct logo: View {
    var body: some View{
        ZStack{
            logopart1().stroke(lineWidth: 4).fill(Color(UIColor(white: 0.2, alpha: 1)))
        }
    }
}
