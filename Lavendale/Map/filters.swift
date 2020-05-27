//
//  filters.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/18/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct filters: View {
    @State var showFilters = false
    @State var patientSelected = false
    @State var montiorSelected = false
    @State var donorSelected = false
    @State var collectionCentersSelected = false
    @State var applyFiltersSelected = false
    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: showFilters ? 10: 5, height: showFilters ? 10: 5).foregroundColor(.white).animation(.spring())
                Text("Show Filters").foregroundColor(.white).font(.custom("Barlow-Bold", size: 18))
                Spacer()
                Image(systemName: "slider.horizontal.3").foregroundColor(.white)
            }.padding().onTapGesture {
                self.showFilters.toggle()
            }
            if showFilters{
                VStack{    HStack{
                    VStack {
                        HStack {
                            Text("Patient").font(.custom("Barlow-Medium", size: 16))
                            Spacer()
                            Image(systemName: "info.circle")
                        }.foregroundColor(.white)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).fill(Color(slate)).frame(width: 100, height: 40)
                            RoundedRectangle(cornerRadius: 10).fill(Color(coral)).frame(width: 50, height: 40).offset(x: patientSelected ? 25 : -25).onTapGesture {
                                self.patientSelected.toggle()
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        HStack {
                            Text("Monitored").font(.custom("Barlow-Medium", size: 16))
                            Spacer()
                            Image(systemName: "info.circle")
                        }.foregroundColor(.white)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).fill(Color(slate)).frame(width: 100, height: 40)
                            RoundedRectangle(cornerRadius: 10).fill(Color(butterscotch)).frame(width: 50, height: 40).offset(x: montiorSelected ? 25 : -25).onTapGesture {
                                self.montiorSelected.toggle()
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        HStack {
                            Text("Donors").font(.custom("Barlow-Medium", size: 16))
                            Spacer()
                            Image(systemName: "info.circle")
                        }.foregroundColor(.white)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).fill(Color(slate)).frame(width: 100, height: 40)
                            RoundedRectangle(cornerRadius: 10).fill(Color(wintergreen)).frame(width: 50, height: 40).offset(x: donorSelected ? 25 : -25).onTapGesture {
                                self.donorSelected.toggle()
                            }
                        }
                        
                    }
                }.padding(.horizontal).padding(.bottom, 100)
                    HStack{
                        Text("Show Collection Centers").foregroundColor(.white)
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).fill(Color(slate)).frame(width: 100, height: 40)
                            RoundedRectangle(cornerRadius: 10).fill(Color(dullBlue)).frame(width: 50, height: 40).offset(x: collectionCentersSelected ? 25 : -25).onTapGesture {
                                self.collectionCentersSelected.toggle()
                            }
                        }
                        
                    }.padding()
                    HStack {
                        Spacer()
                        Text("APPLY FILTERS").kerning(1).foregroundColor(.white).font(.custom("Barlow-Bold", size: 18))
                        Spacer()
                    }.padding().background(Color(slate)).cornerRadius(15).padding()
                }.animation(.spring())
            }
        }.background(Color(dark)).cornerRadius(20).padding(.horizontal, 6)
    }
}

struct filters_Previews: PreviewProvider {
    static var previews: some View {
        filters()
    }
}
