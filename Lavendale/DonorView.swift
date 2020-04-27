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
    var filterType = ["All","Filtered"]
    @State var selectedFilter = 0
    
    
    var body: some View {
        NavigationView {
            VStack{
                Picker(selection: $selectedFilter, label: Text("Choose a map")){
                    ForEach(0 ..< filterType.count){
                        Text(self.filterType[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
                if selectedFilter == 1{
                    Picker(selection: $selectedMap, label: Text("Choose a map")){
                        ForEach(0 ..< maps.count){
                            Text(self.maps[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle()).animation(.spring())
                    
                }
                Picker(selection: $selectedDisplay, label: Text("Choose a map")){
                    ForEach(0 ..< displayTypes.count){
                        Text(self.displayTypes[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                if selectedMap == 0 && selectedDisplay == 1{
                    MapView1().edgesIgnoringSafeArea(.all)
                }
                    else if selectedFilter == 0 && selectedDisplay == 0{
                    List(){
                        malepatient3()
                                                          femalepatient1()
                                                          malepatient2()
                                              femalepatient2()
                                                          malepatient2()
                                                          femalepatient3()                    }
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
    func makeCoordinator() -> mapController {
        mapController(self)}
    func makeUIView(context: Context) -> MKMapView {
        setupManager()
      let map = MKMapView(frame: UIScreen.main.bounds)
                      map.showsUserLocation = true
                      //useless without the MKMapView setting the frame
                      map.userTrackingMode = .none
                      map.delegate = context.coordinator
                      map.addAnnotation(annotation(title: "Donor", subtitle:"Teir One", coordinate: CLLocationCoordinate2D(latitude: 43.063, longitude: -84.4424)))
                      return map
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
    func makeCoordinator() -> mapController2 {
           mapController2(self)
       }
    func makeUIView(context: Context) -> MKMapView {
       let map = MKMapView(frame: UIScreen.main.bounds)
                      map.showsUserLocation = true
                      //useless without the MKMapView setting the frame
                      map.userTrackingMode = .none
                      map.delegate = context.coordinator
                      map.addAnnotation(annotation(title: "Donor", subtitle:"Teir One", coordinate: CLLocationCoordinate2D(latitude: 43.063, longitude: -84.4424)))
                      return map
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
    func makeCoordinator() -> mapController3 {
           mapController3(self)
       }
    func makeUIView(context: Context) -> MKMapView {
        setupManager()
       let map = MKMapView(frame: UIScreen.main.bounds)
               map.showsUserLocation = true
               //useless without the MKMapView setting the frame
               map.userTrackingMode = .none
               map.delegate = context.coordinator
               map.addAnnotation(annotation(title: "Donor", subtitle:"Teir One", coordinate: CLLocationCoordinate2D(latitude: 43.063, longitude: -84.4424)))
               return map
    }
    func updateUIView(_ view: MKMapView, context: Context){
    
    }
    
}
class annotation : NSObject, MKAnnotation{
init(title: String?, subtitle: String?, coordinate: CLLocationCoordinate2D) {
    self.title = title
    self.subtitle = subtitle
    self.coordinate = coordinate
}

let title: String?
let subtitle: String?
let coordinate: CLLocationCoordinate2D

}
class mapController : NSObject, MKMapViewDelegate{
    var mapcontroller : MapView1
    
    init(_ control: MapView1){
        self.mapcontroller = control
    }
    
    func mapView(_ view : MKMapView, viewFor
        annotation: MKAnnotation)-> MKAnnotationView?{
        let view = MKAnnotationView(annotation: annotation, reuseIdentifier: "view")
        view.canShowCallout = true
        view.image = UIImage(named: "01.circle.fill")
        return view
    }
}

class mapController2 : NSObject, MKMapViewDelegate{
    var mapcontroller : MapView2
    
    init(_ control: MapView2){
        self.mapcontroller = control
    }
    
    func mapView(_ view : MKMapView, viewFor
        annotation: MKAnnotation)-> MKAnnotationView?{
        let view = MKAnnotationView(annotation: annotation, reuseIdentifier: "view")
        view.canShowCallout = true
        view.image = UIImage(named: "02.circle.fill")
        return view
    }
}

class mapController3 : NSObject, MKMapViewDelegate{
    var mapcontroller : MapView3
    
    init(_ control: MapView3){
        self.mapcontroller = control
    }
    
    func mapView(_ view : MKMapView, viewFor
        annotation: MKAnnotation)-> MKAnnotationView?{
        let view = MKAnnotationView(annotation: annotation, reuseIdentifier: "view")
        view.canShowCallout = true
        view.image = UIImage(named: "03.circle.fill")
        return view
    }
}
