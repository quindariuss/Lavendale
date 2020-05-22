//
//  newprofiles.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/22/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct newprofiles: View {
    var profileChoices = ["patient","provider","donor"]
    @State var profileChoice = 0
    let gradientColors = Gradient(colors: [.white, Color(iceBlue)])
    let tabSize: CGFloat = 80
    let tabHeight: CGFloat = 45
    let tabOffset: CGFloat = 60
    
    var body: some View {
        ZStack {
            Rectangle().edgesIgnoringSafeArea(.all).foregroundColor(Color(iceBlue)).zIndex(0)
            Text("PATIENT").kerning(1).foregroundColor(.white).offset(y: -5).frame(width: tabSize,height: tabHeight).background(Color(coral).opacity(profileChoice == 0 ? 1 :0.1)).cornerRadius(10).offset(y: 20).font(.custom("Barlow-Bold", size: 15)).onTapGesture {
                       self.profileChoice = 0
            }.offset(x: -30,y: -200).zIndex(profileChoice == 0 ? 1 : 0).shadow(radius: 4).animation(.easeIn(duration: 0.5))
                   Text("PROVIDER").kerning(1).foregroundColor(.white).offset(y: -5).frame(width: tabSize+5,height: tabHeight).background(Color(dark).opacity(profileChoice == 1 ? 1 :0.1)).cornerRadius(10).offset(y: 20).font(.custom("Barlow-Bold", size: 15)).onTapGesture {
                       self.profileChoice = 1
                   }.offset(x:tabOffset-3,y: -200).zIndex(profileChoice == 1 ? 1 : 0).shadow(radius: 4).animation(.easeIn(duration: 0.5))
                   Text("DONOR").kerning(1).foregroundColor(.white).offset(y: -5).frame(width: tabSize,height: tabHeight).background(Color(wintergreen).opacity(profileChoice == 2 ? 1 :0.2)).cornerRadius(10).offset(y: 20).font(.custom("Barlow-Bold", size: 15)).onTapGesture {
                       self.profileChoice = 2
                    }.offset(x:tabOffset*2+24,y: -200).zIndex(profileChoice == 2 ? 1 : 0).shadow(radius: 4).animation(.easeIn(duration: 0.3))
            
               Text("Profiles").kerning(1).padding(.leading,24).offset(y: 15).font(.custom("Barlow-SemiBold", size: 18)).foregroundColor(Color(slate)).offset(x:-87*2+30,y: -205)
            
            RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors: [.white, Color(iceBlue)]), startPoint: .top, endPoint: .bottom)).padding(.horizontal, 5).frame(height: 350)
            
    
            patientProfile().offset(x: profileChoice == 0 ? 0 : -500).animation(.easeIn(duration: 0.2))
            providerProfile().offset(x: profileChoice == 1 ? 0 : 500).offset(x: profileChoice == 2 ? -1000 : 0).animation(.easeIn(duration: 0.2))
            donorProfile().offset(x: profileChoice == 2 ? 0 : 1000).animation(.easeIn(duration: 0.2))
        }
    }
}

struct newprofiles_Previews: PreviewProvider {
    static var previews: some View {
        newprofiles()
    }
}





