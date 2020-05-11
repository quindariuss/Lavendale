//
//  does it work?.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/10/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct does_it_work_: View {
    var listofUsers: [root.Entry] = []
    @State var pressed = false
    var body: some View {
        VStack{
            Text("Press here to see users").onTapGesture {
                self.pressed.toggle()
            }.onAppear(){
                let url = URL(string: "https://syntheticmass.mitre.org/v1/fhir/Patient?_count=100&apikey=UEQmAlUhdIboPI0ks5ERJAQ357A85xM4")!

               URLSession.shared.dataTask(with: url) { data, _, _ in
                   if let data = data {
                       print(data)
                       let users = try? JSONDecoder().decode(root.self, from: data)
                       
                       
                       for var user in users!.entry{
                        listofUsers.append(user.fullUrl)
                       }
                   }
               }.resume()
            }
            if pressed {
                Text(String(listofUsers.count))
            }
            
        }
    }
}

struct does_it_work__Previews: PreviewProvider {
    static var previews: some View {
        does_it_work_()
    }
}
