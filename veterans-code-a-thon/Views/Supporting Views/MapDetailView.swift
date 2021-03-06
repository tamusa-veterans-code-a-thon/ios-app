//
//  MapDetailView.swift
//  veterans-code-a-thon
//
//  Created by Leonard Box on 5/21/21.
//  Copyright © 2021 Leonard Box. All rights reserved.
//

import SwiftUI
import CoreLocation
import MapKit

struct MapDetailView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        // need to parse the map location to here...
    }
}
