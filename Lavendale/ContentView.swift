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
            DonorView().tabItem{
                Text("Donors")
            }
            HomeView().tabItem{
                Text("Home")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
