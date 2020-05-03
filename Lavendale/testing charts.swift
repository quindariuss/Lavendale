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
    var bloodTypes = ["A+","A-","AB-","O+","O-","AB+","B+"]
    @State var selectedBloodType = 0
    @State var value1Aplus: CGFloat = 100
    @State var value2Aplus: CGFloat = 120
    @State var name = "Test data"
    @State var value1Aminus: CGFloat = 100
      @State var value2Aminus: CGFloat = 120
    @State var value1ABminue: CGFloat = 100
      @State var value2ABminue: CGFloat = 120
    @State var value1Oplus: CGFloat = 100
      @State var value2Oplus: CGFloat = 120
    @State var value1Ominus: CGFloat = 100
      @State var value2Ominus: CGFloat = 120
    @State var value1ABplus: CGFloat = 100
      @State var value2ABplus: CGFloat = 120
    @State var value1Bplus : CGFloat = 100
      @State var value2Bplus : CGFloat = 120
    
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
                //                Picker(selection: $selectedBloodType, label: Text("Choose a map")){
                //                    ForEach(0 ..< bloodTypes.count){
                //                        Text(self.bloodTypes[$0])
                //                    }
                Picker(selection: $selectedBloodType, label: Text("Choose a blood type")){
                    ForEach(0 ..< bloodTypes.count){
                        Text(self.bloodTypes[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
                Text("Total Donors Needed: ").font(.custom("Morjuis", size: 24))
                Text("XXX").font(.custom("Morjuis", size: 24))
       Text("Value is: \(value2Aplus)")
                Spacer()
                HStack {
                    if selectedBloodType
                        == 0 {
                        VStack {
                            HStack(alignment: .bottom) {
                                Rectangle().frame(width: 30, height: value1Aplus).foregroundColor(.red)
                                Rectangle().frame(width: 30, height: value2Aplus).offset(x: -12).foregroundColor(.black)
                            }
                            
                        }
                    } else {
                        EmptyView()
                    }
                    if selectedBloodType
                        == 1 {
                        VStack {
                            HStack(alignment: .bottom) {
                                Rectangle().frame(width: 30, height: value1Aminus).foregroundColor(.red)
                                Rectangle().frame(width: 30, height: value2Aminus).offset(x: -12).foregroundColor(.black)
                            }.animation(.spring())
                       
                        }
                    } else {
                        EmptyView()
                    }
                    if selectedBloodType
                        == 2 {
                        VStack {
                            HStack(alignment: .bottom) {
                                Rectangle().frame(width: 30, height: value1ABminue).foregroundColor(.red)
                                Rectangle().frame(width: 30, height: value2ABminue).offset(x: -12).foregroundColor(.black)
                            }.animation(.spring())
                           
                        }
                    } else {
                        EmptyView()
                    }
                    if selectedBloodType
                        == 3 {
                        VStack {
                            HStack(alignment: .bottom) {
                                Rectangle().frame(width: 30, height: value1Oplus).foregroundColor(.red)
                                Rectangle().frame(width: 30, height: value2Oplus).offset(x: -12).foregroundColor(.black)
                            }.animation(.spring())
                         
                        }
                    } else {
                        EmptyView()
                    }
                    
                    if selectedBloodType
                        == 4 {
                        VStack {
                            HStack(alignment: .bottom) {
                                Rectangle().frame(width: 30, height: value1Ominus).foregroundColor(.red)
                                Rectangle().frame(width: 30, height: value2Ominus).offset(x: -12).foregroundColor(.black)
                            }.animation(.spring())
                     
                        }
                    } else {
                        EmptyView()
                    }
                    if selectedBloodType
                        == 5 {
                        VStack {
                            HStack(alignment: .bottom) {
                                Rectangle().frame(width: 30, height: value1ABplus).foregroundColor(.red)
                                Rectangle().frame(width: 30, height: value2ABplus).offset(x: -12).foregroundColor(.black)
                            }.animation(.spring())
                        
                        }
                    } else {
                        EmptyView()
                    }
                    if selectedBloodType
                        == 6 {
                        VStack {
                            HStack(alignment: .bottom) {
                                Rectangle().frame(width: 30, height: value1Bplus).foregroundColor(.red)
                                Rectangle().frame(width: 30, height: value2Bplus).offset(x: -12).foregroundColor(.black)
                            }.animation(.spring())
                         
                        }
                    } else {
                        EmptyView()
                    }
                }
                Text(self.bloodTypes[selectedBloodType]).font(.custom("Morjuis", size: 21)).padding()
                
                HStack(alignment: .bottom) {
                    Button("Add Value One"){
                        if self.value1Aplus < 320 {
                            self.value1Aplus += 20
                        }
                    }
                    Button("Add Value Two"){
                        if self.value2Aplus < 320 {
                            self.value2Aplus += 20
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
