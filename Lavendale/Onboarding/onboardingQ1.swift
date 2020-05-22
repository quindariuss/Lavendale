//
//  onboardingQ1.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/18/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct onboardingQ1: View {
    var body: some View {
        ZStack {
            Rectangle().edgesIgnoringSafeArea(.all).foregroundColor(Color(paleGrey))
            Q2()
        }
        
    }
}

struct onboardingQ1_Previews: PreviewProvider {
    static var previews: some View {
        onboardingQ1()
    }
}

struct Q1: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("Are you a healthcare provider?").font(.custom("Barlow-Bold", size: 21)).foregroundColor(Color(slate))
            Text("YES")
                .font(.custom("Barlow-Medium", size: 30)).foregroundColor(Color(dullBlue))
                
                .padding(.vertical).frame(width: 250, height: 150).cornerRadius(10) .padding(.vertical).overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).fill(Color(dullBlue)))
            
            Text("NO")
                .font(.custom("Barlow-Medium", size: 30)).foregroundColor(Color(dullBlue))
                .padding(.vertical).frame(width: 250, height: 150).cornerRadius(10) .padding(.vertical).overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).fill(Color(dullBlue)))
        }
    }
}

struct Q2: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("Please select which best\napplies to you: ").font(.custom("Barlow-Bold", size: 21)).foregroundColor(Color(slate))
            VStack {
                Text("I have donated plasma")
                    .font(.custom("Barlow-Medium", size: 18)).foregroundColor(Color(dullBlue))
                HStack{
                    
                    ZStack {
                        HStack(spacing: 56) {
                            Rectangle().frame(width: 50, height: 1).foregroundColor(Color(dullBlue))
                            Rectangle().frame(width: 50, height: 1).foregroundColor(Color(dullBlue))
                        }
                        Text("or  ").font(.custom("Barlow-Light", size: 18)).foregroundColor(Color(dullBlue))
                    }
                }
                Text("I want to donate plasma")
                    .font(.custom("Barlow-Medium", size: 18)).foregroundColor(Color(dullBlue))
                
            }.padding(.vertical).frame(width: 250, height: 150).cornerRadius(10) .padding(.vertical).overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).fill(Color(dullBlue)))
            
            Text("I need plasma")
                .font(.custom("Barlow-Medium", size: 18)).foregroundColor(Color(dullBlue))
                .padding(.vertical).frame(width: 250, height: 150).cornerRadius(10) .padding(.vertical).overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).fill(Color(dullBlue)))
        }
    }
}
