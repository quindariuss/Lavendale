//
//  Week.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/7/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct Week: View {
    var body: some View {
         List() {
                   maleschedulegreen()
                   malescheduleyellow()
                   malescheduleyellow()
                   malescheduleyellow()
                   malescheduleyellow()
                maleschedulegreen()
                         malescheduleyellow()
                         malescheduleyellow()
                         malescheduleyellow()
                         malescheduleyellow()
                         
                    
            
               }.navigationBarTitle("Week")
    }
}

struct Week_Previews: PreviewProvider {
    static var previews: some View {
        Week()
    }
}
