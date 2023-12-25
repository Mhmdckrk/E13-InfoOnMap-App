//
//  Capital.swift
//  Project16
//
//  Created by Mahmud CIKRIK on 25.10.2023.
//

import UIKit
import MapKit
// neden struct kullanmıyoruz çünkü NSObject yani objective-C kodunu kullanıyor.

class Capital: NSObject, MKAnnotation {
    
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    var url: String?
    
    init(title: String? = nil, coordinate: CLLocationCoordinate2D, info: String, url: String? = nil) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
        self.url = url
    }
}
