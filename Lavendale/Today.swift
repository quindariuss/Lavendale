//
//  Today.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/7/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct Today: View {
    var body: some View {
        List() {
            maleschedulegreen()
            malescheduleyellow()
            maleschedulegreen()
       
                
        }.navigationBarTitle("Today")
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        Today()
    }
}
