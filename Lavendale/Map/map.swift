//
//  map.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/18/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI
import MapKit

struct map: View {
    @ObservedObject var viewModel = FHIRViewModel()
     @State var people: [annotation] = [annotation(title: "hello", subtitle: "world", coordinate: CLLocationCoordinate2D(latitude: 43.063, longitude: -84.4424))]
    var body: some View {
        ZStack {
            MapView(people: people).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20).fill(Color.white).frame(width: 180, height: 50)
                        HStack{
                            Image(systemName: "goforward").padding(.leading).frame(width: 10).onTapGesture {
                                for person in self.viewModel.people{
                                    self.people.append(annotation(title: person.resource.name[0].given[0], subtitle: person.resource.name[0].family, coordinate: CLLocationCoordinate2D(latitude: CLLocationDegrees(exactly: person.resource.address[0].extension[0].extension[0].valueDecimal)!, longitude: CLLocationDegrees(exactly: person.resource.address[0].extension[0].extension[1].valueDecimal)!)))
                                }
                            }
                            
                            RoundedRectangle(cornerRadius: 2).fill(Color(paleGrey)).frame(width: 1, height: 30).padding(.leading)
                            Spacer()
                            Text("ZIPCODE").foregroundColor(Color(slate).opacity(0.2)).font(.custom("Barlow-ExtraBold", size: 16))
                            Spacer()
                        }.frame(width: 150)
                    }
                }.padding()
                Spacer()
            }
                
            filters().offset(y: 100)
            
        }
        
    }
}

struct map_Previews: PreviewProvider {
    static var previews: some View {
        map()
    }
}

struct MapView: UIViewRepresentable{
    @State var people: [annotation]
    
    var locationManager = CLLocationManager()
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    func makeCoordinator() -> mapControl {
        mapControl(self)}
    func makeUIView(context: Context) -> MKMapView {
        setupManager()
        let map = MKMapView(frame: UIScreen.main.bounds)
        map.showsUserLocation = true
        //useless without the MKMapView setting the frame
        map.userTrackingMode = .none
        map.delegate = context.coordinator
        var annotationView = MKMarkerAnnotationView()
        let identifier = "anno"
        if let dequedView = map.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView {
            annotationView = dequedView
        }
        map.addAnnotations(people)
        
        return map
    }
    func updateUIView(_ view: MKMapView, context: Context){ }
    
}

class mapControl : NSObject, MKMapViewDelegate{
    var mapcontroller : MapView
    
    init(_ control: MapView){
        self.mapcontroller = control
    }
    
    func mapView(_ view : MKMapView, viewFor
        annotation: MKAnnotation)-> MKAnnotationView?{
        let view = MKAnnotationView(annotation: annotation, reuseIdentifier: "view")
        view.canShowCallout = true
        view.image = UIImage(named: "Fill 2")
        return view
    }
}
