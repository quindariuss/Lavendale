//
//  FHIRDatabase.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/11/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import Foundation
import Combine

// 1
enum Database {
    static let apiClient = APIClient()
    static let baseUrl = URL(string: "https://api.themoviedb.org/3/")!
    static let FHIRURL = URL(string: "https://syntheticmass.mitre.org/v1/fhir/Patient?_count=100&apikey=UEQmAlUhdIboPI0ks5ERJAQ357A85xM4")!
}

// 2
enum APIPath: String {
    case trendingMoviesWeekly = "trending/movie/week"
}

extension Database {
    
    static func request() -> AnyPublisher<root, Error> {

        
        let request = URLRequest(url: FHIRURL)
        
        return apiClient.run(request) // 5
            .map(\.value) // 6
            .eraseToAnyPublisher() // 7
    }
}
