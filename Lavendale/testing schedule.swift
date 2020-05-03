//
//  testing schedule.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 4/26/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct testing_schedule: View {
    var body: some View {
        VStack {
            HStack {
                Text("Today").font(.custom("Morjuis", size: 21))
                Spacer()
            }.padding()
            HStack {
                Rectangle()
                .frame(width: 7, height: 50)
                .cornerRadius(20)
                .foregroundColor(.yellow)
                Text("\(maleName.randomElement()!)")
                
                Spacer()
                Text("12:00 PM").padding(6.0).background(Color.gray).cornerRadius(20)
                Spacer()
                HStack(spacing: 16){
                               Image(systemName: "phone")
                               Image(systemName: "bubble.left").padding(.vertical, 16.0)
                               Image(systemName: "gobackward")
                }
                
            }
                HStack {
                          Rectangle()
                          .frame(width: 7, height: 50)
                          .cornerRadius(20)
                          .foregroundColor(.red)
                          Text("\(maleName.randomElement()!)")
                          
                          Spacer()
                          Text("12:00 PM").padding(6.0).background(Color.gray).cornerRadius(20)
                          Spacer()
                          HStack(spacing: 16){
                                         Image(systemName: "phone")
                                         Image(systemName: "bubble.left").padding(.vertical, 16.0)
                                         Image(systemName: "gobackward")
                          }
                          
                      }
            .padding(.horizontal, 16.0)
            HStack {
                Text("Tomorrow").font(.custom("Morjuis", size: 21))
                Spacer()
            }.padding()
            
            HStack {
                Text("Week").font(.custom("Morjuis", size: 21))
                Spacer()
            }.padding()
        }
        
    }
}

struct testing_schedule_Previews: PreviewProvider {
    static var previews: some View {
        testing_schedule()
        
    }
}
