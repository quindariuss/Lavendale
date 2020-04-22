//
//  ContentView.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 4/21/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    

    var body: some View {
        TabView{
            HomeView().tabItem{
                          Text("Home")
                      }
            DonorView().tabItem{
                Text("Donors")
            }
          
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
