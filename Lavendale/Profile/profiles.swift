//
//  personalProfile.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/18/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct profiles: View {
    var profileChoices = ["patient","provider","donor"]
    @State var profileChoice = 0
    let gradientColors = Gradient(colors: [.white, Color(iceBlue)])
    let tabSize: CGFloat = 80
    let tabHeight: CGFloat = 45
    var body: some View {
        
        
        
        ScrollView {
            ZStack {
                Rectangle().edgesIgnoringSafeArea(.all).foregroundColor(Color(iceBlue)).zIndex(0)
                ScrollView {
                    //Logo
                    HStack{
                        Logo().scaleEffect(0.1).frame(width: 40, height: 40).padding([ .leading, .bottom], 32.0)
                        Spacer()
                        
                    }
                    //Profile tabs
                    profileTabs()

                    HStack {
                        Text("Posts").kerning(0.75).font(.custom("Barlow-Semibold", size: 24)).padding(.leading, 24).foregroundColor(Color(slate))
                        Spacer()
                    }
                    post()
                    post()
                    post()
                    Image(systemName: "plus").foregroundColor(Color(slate)).padding(.vertical,32).padding(.bottom, 100)
                }.padding(.top, 64)
                
            }
            .navigationBarTitle("", displayMode: .inline)
        }.edgesIgnoringSafeArea(.all)
    }
    
    
}


struct personalProfile_Previews: PreviewProvider {
    static var previews: some View {
        profiles()
    }
}

struct profileDetails: View {
    @State var chatSheet = false
    @State var settingSheet = false
    @State var recordSheet = false
    let chatHelper = ChatHelper()
    @State var showDocs = false
     @State var firstname = ""
     @State var lastname = ""
     @State var bloodType = ""
     @State var phone = ""
     @State var posCovid = false
     @State var birthdate = Date.init()
     @State var docsugCovid = false
     @State var covidDocs = false
     @State var willTest = UserDefaults.standard.bool(forKey: "willTest")

    var body: some View {
        ZStack {VStack {
            Spacer()
            }
            VStack {
                
                
                VStack {
                    HStack(spacing: 20){
                        VStack {
                            Text("BLOOD TYPE").font(.custom("Barlow-Medium", size: 16)).foregroundColor(Color(dullBlue))
                            Text("A +").font(.custom("Barlow-SemiBold", size: 24)).foregroundColor(Color(slate))
                        }
                        Spacer()
                        VStack {
                            Text("AGE").font(.custom("Barlow-Medium", size: 16)).foregroundColor(Color(dullBlue))
                            Text("22").font(.custom("Barlow-SemiBold", size: 24)).foregroundColor(Color(slate))
                        }
                        Spacer()
                        VStack {
                            Text("DISCOVERY").font(.custom("Barlow-Medium", size: 16)).foregroundColor(Color(dullBlue))
                            Text("YES").font(.custom("Barlow-SemiBold", size: 24)).foregroundColor(Color(slate))
                        }
                    }.padding(.top, 32)
                    RoundedRectangle(cornerRadius: 5).fill(Color(paleGrey)).frame(width: 300, height: 2).padding(.vertical)
                    HStack {
                        VStack {
                            Image(systemName: "bubble.left.and.bubble.right").font(.system(size: 24)).foregroundColor(Color(dullBlue))
                            Text("Chat").padding(.bottom,32).font(.custom("PollyRounded-Regular", size: 16)).foregroundColor(Color(blueyGrey))
                        }.frame(width: 80).onTapGesture {
                            self.chatSheet.toggle()
                        }.sheet(isPresented: $chatSheet){
                            ChatView().environmentObject(self.chatHelper)
                        }
                        Spacer()
                        VStack {
                            Image(systemName: "briefcase").font(.system(size: 24)).foregroundColor(Color(darkBeige))
                            Text("Records").padding(.bottom,32).font(.custom("PollyRounded-Regular", size: 16)).foregroundColor(Color(blueyGrey))
                        }.onTapGesture {
                            self.recordSheet.toggle()
                        }.sheet(isPresented: $recordSheet){
                            Profile(firstname: self.$firstname, lastname: self.$lastname, birthdate: self.$birthdate, bloodType: self.$bloodType, phone: self.$phone, posCovid: self.$posCovid,docsugCovid: self.$docsugCovid, willTest: self.$willTest, covidDocs:self.$covidDocs )
                        }
                        Spacer()
                        VStack {
                            Image(systemName: "gear").font(.system(size: 24)).foregroundColor(Color(dullBlue))
                            Text("Settings").padding(.bottom,32).font(.custom("PollyRounded-Regular", size: 16)).foregroundColor(Color(blueyGrey))
                        }.onTapGesture {
                            self.settingSheet.toggle()
                        }.sheet(isPresented: $settingSheet){
                            Text("Hello Settings")
                        }
                        
                    }
                }
                .frame(width: 250)
                .padding(.horizontal, 50)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .shadow(color: Color(dark).opacity(0.1), radius: 5, x: 3, y: 3)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 3, x: -3, y: -3).padding(.top)
                
            }.navigationBarTitle("hello")
        }
    }
}

struct post: View {
    var body: some View {
        VStack {
            VStack {
                HStack{
                    Image(systemName: "person.circle").frame(width: 60, height: 60).background(Color(iceBlue)).cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text("Quin'darius").font(.custom("Barlow-SemiBold", size: 24)).foregroundColor(Color(slate))
                        Text("May 12").font(.custom("Barlow-Regular", size: 16)).foregroundColor(Color(slate).opacity(0.2))
                    }
                    Spacer()
                    
                    Logo().scaleEffect(0.07).frame(width: 10,height: 10).offset(y: -30)
                    
                }.padding(.top, 32)
                Text("My Mom and Dad have also tested positive for COVID-19 and are in really bad shape in the ICU. Is anyone donating A+ Plasma? ").font(.custom("Barlow-Regular", size: 14)).foregroundColor(Color(blueyGrey))
            }
            
            RoundedRectangle(cornerRadius: 5).fill(Color(paleGrey)).frame(width: 300, height: 2).padding(.vertical)
            
            HStack{
                Image(systemName: "square.and.arrow.up").foregroundColor(Color(blueyGrey))
                Spacer()
                Text("100").foregroundColor(Color(blueyGrey))
                Image(systemName: "text.bubble").foregroundColor(Color(blueyGrey))
                Text("3k").foregroundColor(Color(blueyGrey))
                Image(systemName: "heart").foregroundColor(Color(blueyGrey))
            }.padding(.bottom)
            
        }.frame(width: 250)
            .padding(.horizontal, 50)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(color: Color(dark).opacity(0.1), radius: 5, x: 3, y: 3)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 3, x: -3, y: -3).padding(.top)
    }
}
