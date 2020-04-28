//
//  testing charts.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 4/28/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct testing_charts: View {
    init(){
             UINavigationBar.appearance().largeTitleTextAttributes = [
                 .foregroundColor: UIColor.black,
                 .font : UIFont(name:"Morjuis", size: 32)!]
         }
    
    @State var value1: CGFloat = 100
    @State var value2: CGFloat = 120
    @State var name = "Test data"
    //    "aPostive",
    //      "aNeagative",
    //      "abNegative",
    //      "oPositive",
    //      "oNegative",
    //      "abPositive",
    //      "bNegative",
    //      "bPositive",
    //      "Not Sure"
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Total Donors Needed: ").font(.custom("Morjuis", size: 24))
                Text("XXX").font(.custom("Morjuis", size: 24))
//                Text("\(value1)")
                Spacer()
                HStack {
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.animation(.spring())
                        Text("A+")
                    }
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().padding(0.0).frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().padding(0.0).frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.animation(.spring())
                        Text("A-")
                    }
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.padding(0.0).animation(.spring())
                        Text("AB-")
                    }
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.animation(.spring())
                        Text("O+")
                    }
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.animation(.spring())
                        Text("O-")
                    }
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.animation(.spring())
                        Text("AB+")
                    }
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.animation(.spring())
                        Text("B+")
                    }
                    VStack {
                        HStack(alignment: .bottom) {
                            Rectangle().frame(width: 15, height: value1).foregroundColor(.red)
                            Rectangle().frame(width: 15, height: value2).offset(x: -12).foregroundColor(.black)
                        }.animation(.spring())
                        Text("NA")
                    }
                }
                
                HStack(alignment: .bottom) {
                    Button("Add Value One"){
                        if self.value1 < 600 {
                            self.value1 += 20
                        }
                    }
                    Button("Add Value Two"){
                        if self.value2 < 600 {
                            self.value2 += 20
                        }
                }
            }.navigationBarTitle("Blood Needed Beta")
            
            
            }
        }
}

struct testing_charts_Previews: PreviewProvider {
    static var previews: some View {
        testing_charts()
    }
}
}
