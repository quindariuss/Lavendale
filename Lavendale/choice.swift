//
//  choice.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/9/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct choice: View {
    var body: some View {
        VStack {
            Text("Facility").padding().background(Color.blue).cornerRadius(10).padding()
            Text("Patient").padding().background(Color.blue).cornerRadius(10).padding()
        }
    }
}

struct choice_Previews: PreviewProvider {
    static var previews: some View {
        choice()
    }
}
