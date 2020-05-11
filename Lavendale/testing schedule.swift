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
             NavigationLink(destination: Today()) {
                          HStack {
                      Spacer()
                              Text("4 Patients").font(.custom("PollyRounded-Regular", size: 18)).padding().foregroundColor(.black)
                       Spacer()
                          }.buttonStyle(PlainButtonStyle()).background(Color(#colorLiteral(red: 0.5490196078, green: 0.8156862745, blue: 0.7725490196, alpha: 1))).cornerRadius(10).padding(.horizontal, 10.0)
                      }
                HStack {
                    Text("Tomorrow").font(.custom("Morjuis", size: 21))
                   
                    Spacer()
                    }.padding()
            
            NavigationLink(destination: Tomorrow()) {
                HStack {
            Spacer()
                    Text("16 Patients").font(.custom("PollyRounded-Regular", size: 18)).padding().foregroundColor(.black)
             Spacer()
                }.buttonStyle(PlainButtonStyle()).background(Color(#colorLiteral(red: 0.5490196078, green: 0.8156862745, blue: 0.7725490196, alpha: 1))).cornerRadius(10).padding(.horizontal, 10.0)
            }
            HStack {
                Text("Week").font(.custom("Morjuis", size: 21))
                Spacer()
            }.padding()
              NavigationLink(destination: Week()) {
                          HStack {
                      Spacer()
                              Text("21 Patients").font(.custom("PollyRounded-Regular", size: 18)).padding().foregroundColor(.black)
                       Spacer()
                          }.buttonStyle(PlainButtonStyle()).background(Color(#colorLiteral(red: 0.5490196078, green: 0.8156862745, blue: 0.7725490196, alpha: 1))).cornerRadius(10).padding(.horizontal, 10.0)
                      }
        }
        
    }
}

struct testing_schedule_Previews: PreviewProvider {
    static var previews: some View {
        testing_schedule()
        
    }
}

struct malescheduleyellow: View {
    var body: some View {
        HStack {
            NavigationLink(destination: paitentView()) {
                Rectangle()
                    .frame(width: 7, height: 50)
                    .cornerRadius(20)
                    .foregroundColor(.yellow)
                Text("\(femaleName.randomElement()!)")
                
                Spacer()
                Text("12:00 PM").padding(6.0).background(Color(#colorLiteral(red: 0.8770394447, green: 1, blue: 0.9118144236, alpha: 1))).cornerRadius(10)
                
                
            }.buttonStyle(PlainButtonStyle())
        }
    }
}
struct maleschedulegreen: View {
    var body: some View {
        NavigationLink(destination: paitentView()) {
            HStack {
                Rectangle()
                    .frame(width: 7, height: 50)
                    .cornerRadius(20)
                    .foregroundColor(.green)
                Text("\(maleName.randomElement()!)")
                
                Spacer()
                Text("12:00 PM").padding(6.0).background(Color(#colorLiteral(red: 0.8770394447, green: 1, blue: 0.9118144236, alpha: 1))).cornerRadius(10)
                
                
            }
        }.buttonStyle(PlainButtonStyle())
    }
}

struct maleschedulered: View {
    var body: some View {
        NavigationLink(destination: paitentView()) {
            HStack {
                Rectangle()
                    .frame(width: 7, height: 50)
                    .cornerRadius(20)
                    .foregroundColor(.red)
                Text("\(maleName.randomElement()!)")
                
                Spacer()
                Text("12:00 PM").padding(6.0).background(Color(#colorLiteral(red: 0.8770394447, green: 1, blue: 0.9118144236, alpha: 1))).cornerRadius(10)
                
                
            }
        }.buttonStyle(PlainButtonStyle())
    }
}

