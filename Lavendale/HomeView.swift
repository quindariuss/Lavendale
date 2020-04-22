//
//  HomeView.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 4/21/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    init(){
           UINavigationBar.appearance().largeTitleTextAttributes = [
               .foregroundColor: UIColor.black,
               .font : UIFont(name:"Morjuis", size: 32)!]
       }
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "doc.on.doc")
                    Text("Review Legal Documents")
                    Spacer()
                }.padding()
                HStack {
                    Image(systemName: "waveform.path.ecg")
                    Text("See Monitered Donors")
                    Spacer()
                }.padding()
                HStack {
                    Image(systemName: "calendar")
                    Text("View Appointments")
                    Spacer()
                }.padding()
                HStack {
                    Image(systemName: "envelope.badge")
                    Text("Pending Donors")
                    Spacer()
                }.padding()
                
            Spacer()
            }.navigationBarTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
