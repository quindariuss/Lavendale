//
//  Global.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/18/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct Global: View {
    var body: some View {
        ZStack {
            Rectangle().edgesIgnoringSafeArea(.all).foregroundColor(Color(paleGrey))
        }
    }
}

struct Global_Previews: PreviewProvider {
    static var previews: some View {
        Global()
    }
}

