//
//  Notifications.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/20/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.navigationBarTitle("Notifications")
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
