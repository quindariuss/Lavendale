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
         
            profiles().tabItem{
                          Text("Home")
                Image(systemName: "house")
                      }
            map().tabItem{
                Text("Donors")
                Image(systemName: "person.3")
            }
            newCharts().tabItem{
                         Text("Tally")
                         Image(systemName: "chart.bar")
                     }
            }

      
          
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
