//
//  DonorView.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 4/21/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI
import MapKit


struct DonorView: View {
    init(){
           UINavigationBar.appearance().largeTitleTextAttributes = [
               .foregroundColor: UIColor.black,
               .font : UIFont(name:"Morjuis", size: 32)!]
       }
    var maps = ["Tier One", "Tier Two","Tier Three"]
     @State var selectedMap = 0
     var displayTypes = ["List View","Mapview"]
     @State var selectedDisplay = 0
    var body: some View {
               NavigationView {
                VStack{
                    Picker(selection: $selectedMap, label: Text("Choose a map")){
                        ForEach(0 ..< maps.count){
                            Text(self.maps[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Picker(selection: $selectedDisplay, label: Text("Choose a map")){
                                   ForEach(0 ..< displayTypes.count){
                                       Text(self.displayTypes[$0])
                                   }
                               }.pickerStyle(SegmentedPickerStyle())
                    if selectedMap == 0 && selectedDisplay == 1{
                        MapView1().edgesIgnoringSafeArea(.all)
                    }
                    else if selectedMap == 1 && selectedDisplay == 1{
                        MapView2().edgesIgnoringSafeArea(.all)
                    }
                    else if selectedMap == 2 && selectedDisplay == 1{
                        MapView3().edgesIgnoringSafeArea(.all)
                                   }
                   else if selectedMap == 0 && selectedDisplay == 0{
                        List(0 ..< 10) { item in
                            malepatient1()
                          
                        }
                        
                    }
                    else if selectedMap == 1 && selectedDisplay == 0{
                        List(0 ..< 10) { item in
                                                  malepatient2()
                                                
                                              }                    }
                    else if selectedMap == 2 && selectedDisplay == 0{
                         List(0 ..< 10) { item in
                                                  femalepatient3()
                                                
                                              }
                                   }
                   
                }
                    .navigationBarTitle("COVID-19 Donors")
            }
        }    }


struct DonorView_Previews: PreviewProvider {
    static var previews: some View {
        DonorView()
    }
}

struct MapView1: UIViewRepresentable{
    var locationManager = CLLocationManager()
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    func makeUIView(context: Context) -> MKMapView {
        setupManager()
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }
    func updateUIView(_ view: MKMapView, context: Context){ }
    
}

struct MapView2: UIViewRepresentable{
    var locationManager = CLLocationManager()
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    func makeUIView(context: Context) -> MKMapView {
        setupManager()
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }
    func updateUIView(_ view: MKMapView, context: Context){ }
    
}

struct MapView3: UIViewRepresentable{
    var locationManager = CLLocationManager()
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    func makeUIView(context: Context) -> MKMapView {
        setupManager()
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }
    func updateUIView(_ view: MKMapView, context: Context){ }
    
}
