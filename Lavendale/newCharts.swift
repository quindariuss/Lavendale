//
//  newCharts.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/1/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct newCharts: View {
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font : UIFont(name:"Morjuis", size: 32)!]
    }
    var bloodTypes = ["A+","A-","AB-","O+","O-","AB+","B+"]
    @State var selectedBloodType = 0
    var filterType = ["Filtered","All"]
       @State var selectedFilter = 0
    var offsetter: CGFloat = 0
    
    var body: some View {
        
        GeometryReader { geo in
            NavigationView {
                ZStack {
                       Rectangle().edgesIgnoringSafeArea(.all).foregroundColor(Color(iceBlue)).zIndex(0)
                    VStack {
                        Picker(selection: self.$selectedFilter, label: Text("Choose a map")){
                            ForEach(0 ..< self.filterType.count){
                                               Text(self.filterType[$0])
                                           }
                                       }.pickerStyle(SegmentedPickerStyle())
                        
                        if self.selectedFilter == 0 {
                            Picker(selection: self.$selectedBloodType, label: Text("Choose a blood type")){
                                ForEach(0 ..< self.bloodTypes.count){
                                    Text(self.bloodTypes[$0])
                                    
                                }
                            }.pickerStyle(SegmentedPickerStyle())
                        }
                        
                        
                        ZStack {
                            //                        curvy2().offset(x: -(geo.size.width * CGFloat(Int(self.selectedBloodType))), y: -20).fill(Color.red).blendMode(.hardLight).animation(.spring())
                            curvy2().offset(x: self.selectedFilter == 1 ?0: (-(geo.size.width * CGFloat(Int(self.selectedBloodType))))).fill(Color.red).blendMode(.hardLight).animation(.easeInOut(duration: 1)).frame(width: self.selectedFilter == 1 ? geo.size.width/7 : nil ).offset(x: self.selectedFilter == 1 ? -geo.size.width/2.32 : 0)

                            curvy().offset(x: self.selectedFilter == 1 ?0: (-(geo.size.width * CGFloat(Int(self.selectedBloodType))))).fill(Color.red).animation(.easeInOut(duration: 1)).frame(width: self.selectedFilter == 1 ? geo.size.width/7 : nil ).offset(x: self.selectedFilter == 1 ? -geo.size.width/2.32 : 0)
                        
                            
                        }
                    }.navigationBarTitle("Blood Needed")
                }
            }
        }
    }
    
    struct newCharts_Previews: PreviewProvider {
        static var previews: some View {
            newCharts()
        }
    }
    
    //    struct curvy: Shape{
    //        func path(in rect: CGRect) -> Path {
    //            var path = Path()
    //            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
    //            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
    //            path.addQuadCurve(to: CGPoint(x: (rect.maxX), y: rect.midY+CGFloat(Int.random(in: 0 ..< 100))), control: CGPoint(x: (rect.midX), y: rect.minY))
    //            path.addQuadCurve(to: CGPoint(x: (rect.maxX*2), y: rect.midY+CGFloat(Int.random(in: 0 ..< 100))), control: CGPoint(x: ((rect.maxX) + rect.midX), y: rect.minY))
    //            path.addQuadCurve(to: CGPoint(x: (rect.maxX*3), y: rect.midY+CGFloat(Int.random(in: 0 ..< 100))), control: CGPoint(x: ((rect.maxX*2) + rect.midX), y: rect.minY))
    //            path.addQuadCurve(to: CGPoint(x: (rect.maxX*4), y: rect.midY+CGFloat(Int.random(in: 0 ..< 100))), control: CGPoint(x: ((rect.maxX*3) + rect.midX), y: rect.minY))
    //            path.addQuadCurve(to: CGPoint(x: (rect.maxX*5), y: rect.midY+CGFloat(Int.random(in: 0 ..< 100))), control: CGPoint(x: ((rect.maxX*4) + rect.midX), y: rect.minY))
    //            path.addQuadCurve(to: CGPoint(x: (rect.maxX*6), y: rect.midY+CGFloat(Int.random(in: 0 ..< 100))), control: CGPoint(x: ((rect.maxX*5) + rect.midX), y: rect.minY))
    //            path.addQuadCurve(to: CGPoint(x: (rect.maxX*7), y: rect.midY+CGFloat(Int.random(in: 0 ..< 100))), control: CGPoint(x: ((rect.maxX*6) + rect.midX), y: rect.minY))
    //            path.addLine(to: CGPoint(x: (rect.maxX*7), y: rect.maxY))
    //            return path
    //        }
    //    }
    //}
    
    struct curvy: Shape{
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addLine(to: CGPoint(x: (rect.maxX), y: rect.midY+154))
            path.addLine(to: CGPoint(x: (rect.maxX*2), y: rect.midY+121))
            path.addLine(to: CGPoint(x: (rect.maxX*3), y: rect.midY+133))
            path.addLine(to: CGPoint(x: (rect.maxX*4), y: rect.midY+112))
            path.addLine(to: CGPoint(x: (rect.maxX*5), y: rect.midY+154))
            path.addLine(to: CGPoint(x: (rect.maxX*6), y: rect.midY+121))
            path.addLine(to: CGPoint(x: (rect.maxX*7), y: rect.midY+11))
            path.addLine(to: CGPoint(x: (rect.maxX*7), y: rect.maxY))
            return path
        }
    }
    
    struct curvy2: Shape{
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addLine(to: CGPoint(x: (rect.maxX), y: rect.midY-123))
            path.addLine(to: CGPoint(x: (rect.maxX*2), y: rect.midY-123))
            path.addLine(to: CGPoint(x: (rect.maxX*3), y: rect.midY-40))
            path.addLine(to: CGPoint(x: (rect.maxX*4), y: rect.midY-60))
            path.addLine(to: CGPoint(x: (rect.maxX*5), y: rect.midY-20))
            path.addLine(to: CGPoint(x: (rect.maxX*6), y: rect.midY-102))
            path.addLine(to: CGPoint(x: (rect.maxX*7), y: rect.midY-23))
            path.addLine(to: CGPoint(x: (rect.maxX*7), y: rect.maxY))
            return path
        }
    }
}
