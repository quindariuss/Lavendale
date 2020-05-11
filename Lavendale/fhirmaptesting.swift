//
//  fhirmaptesting.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/10/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI
import MapKit

struct fhirmaptesting: View {
    var body: some View {
        Mapview()
    }
}

struct fhirmaptesting_Previews: PreviewProvider {
    static var previews: some View {
        fhirmaptesting()
    }
}

struct Mapview: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        
    }
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView(frame: UIScreen.main.bounds)
        
        return map
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

var annotations: [annotation] = []


