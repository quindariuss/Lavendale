//
//  testingschedule.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/7/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct testingschedule: View {
    var body: some View {
        List() {
        malescheduleyellow()
                 maleschedulered()
                 maleschedulegreen()
                 maleschedulegreen()
        }
    }
}

struct testingschedule_Previews: PreviewProvider {
    static var previews: some View {
        testingschedule()
    }
}

