//
//  FHIRViewModel.swift
//  CombineNetworking
//
//  Created by Quin’darius Lyles-Woods on 5/11/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import Foundation
import Combine

class FHIRViewModel: ObservableObject {
    @Published var people: [root.Entry] = []
    var callcellationToken: AnyCancellable?
    
    init() {
        getpeople()
    }
}
extension FHIRViewModel{
    func getpeople(){
        callcellationToken = Database.request()
            .mapError({(error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in},
                  receiveValue: {
                    self.people = $0.entry
            })
    }
}
