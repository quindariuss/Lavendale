//
//  patientProfile.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/22/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct patientProfile: View {
    var body: some View {
        VStack {
            HStack {
                Text("Quin'darius\nLyles-Woods").font(.custom("Barlow-Bold", size: 32)).foregroundColor(Color(slate)).padding([.top, .leading], 32)
                Spacer()
            }
            profileDetails()
        }
    }
}


struct patientProfile_Previews: PreviewProvider {
    static var previews: some View {
        patientProfile()
    }
}
