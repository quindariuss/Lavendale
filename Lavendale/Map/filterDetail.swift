//
//  filterDetail.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/20/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct filterDetail: View {
    var body: some View {
        VStack {
            HStack {
                Text("Donors").font(.custom("Barlow-SemiBold", size: 28)).padding([.top, .leading])
                Spacer()
                Image(systemName: "xmark").padding([.top, .trailing])
            }.foregroundColor(.white)
            VStack(alignment: .leading) {
                Text(" Donors are defined as individuals who: ")
                Text(" • Tested Positive for Covid-19")
                Text(" • Are 18-69 years-old")
                Text(" • Symptom free for 28 days")
            }.foregroundColor(Color(.white).opacity(0.7)).font(.custom("Barlow-Regular", size: 16))
            HStack{
                Circle().frame(width: 10, height: 10).foregroundColor(Color(slate)).padding(.leading)
                Circle().frame(width: 10, height: 10).foregroundColor(Color(slate))
                Circle().frame(width: 10, height: 10).foregroundColor(Color(slate))
Spacer()
                Image(systemName: "arrow.left").frame(width: 60, height: 60).background(Color(slate)).cornerRadius(15).padding(.bottom)
                Image(systemName: "arrow.right").frame(width: 60, height: 60).background(Color(slate)).cornerRadius(15).padding([.trailing, .bottom])
            }
            
            }.background(Color(dark)).cornerRadius(15).padding()
    }
}

struct filterDetail_Previews: PreviewProvider {
    static var previews: some View {
        filterDetail()
    }
}
