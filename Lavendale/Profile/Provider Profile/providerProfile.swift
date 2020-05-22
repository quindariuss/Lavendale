//
//  providerProfile.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/22/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct providerProfile: View {
    var body: some View {
        VStack {
            HStack {
                Text("NewScreen").font(.custom("Barlow-Bold", size: 32)).foregroundColor(Color(slate)).padding([.top, .leading], 32)
                Spacer()
            }
            profileDetails()
        }
    }
}

struct providerProfile_Previews: PreviewProvider {
    static var previews: some View {
        providerProfile()
    }
}
