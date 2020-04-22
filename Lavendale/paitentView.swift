//
//  HomeView.swift
//  Clot
//
//  Created by Quin’darius Lyles-Woods on 4/18/20.
//  Copyright © 2020 Quin’darius Lyles-Woods. All rights reserved.
//

import SwiftUI
import HealthKit

var store = HKHealthStore()
struct paitentView: View {
    @State var showDocs = false
    @State var firstname = ""
    @State var lastname = ""
    @State var bloodType = ""
    @State var phone = ""
    @State var posCovid = false
    @State var birthdate = Date.init()
    @State var docsugCovid = false
    @State var covidDocs = false
    @State var willTest = UserDefaults.standard.bool(forKey: "willTest")
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font : UIFont(name:"Morjuis", size: 32)!]
    }
    
    
    var body: some View {
            
            
            ZStack {
                
                
                
                
                VStack(alignment: .leading, spacing: 36) {
                    HStack {
                        Image(systemName: "heart").foregroundColor(.red)
                        Text("Connect to Apple HealthKit").font(.custom("PollyRounded-Regular", size: 16)).onTapGesture {
                            autorizeHealthKit()
                        }
                    }
                    
                    HStack {
                        Image(systemName: "map").foregroundColor(.red)
                        Text("Allow Location Discovery").font(.custom("PollyRounded-Regular", size: 16)).navigationBarTitle("Home").onTapGesture {
                        }
                    }
                    HStack {
                        Image(systemName: "doc").foregroundColor(.red)
                        Text("Review Consent Documents").font(.custom("PollyRounded-Regular", size: 16)).navigationBarTitle("Home")
                    }.onTapGesture {
                        self.showDocs.toggle()
                    }.sheet(isPresented: $showDocs){
                        DocumentPicker().edgesIgnoringSafeArea(.all)
                    }
               
                    NavigationLink(destination: heathkittest()) {
                        HStack {
                                Image(systemName: "waveform.path.ecg").foregroundColor(.red)
                                Text("Log Symptoms").font(.custom("PollyRounded-Regular", size: 16)).navigationBarTitle("Home")
                        }
                    }.buttonStyle(PlainButtonStyle())
                   
                    VStack() {
                        
                        HStack {
                            Text("Donor Information").font(.custom("Morjuis", size: 21))
                            Spacer()
                            NavigationLink(destination: Profile(firstname: $firstname, lastname: $lastname, birthdate: $birthdate, bloodType: $bloodType, phone: $phone, posCovid: $posCovid,docsugCovid: $docsugCovid, willTest: $willTest, covidDocs:$covidDocs ))  {
                                Image(systemName: "pencil")
                            }.buttonStyle(PlainButtonStyle())
                        }
                        
                        HStack {
                            Text("Name:").font(.custom("PollyRounded-Regular", size: 16))
                            Spacer()
                            Text("\(firstname) \(lastname)").font(.custom("PollyRounded-Regular", size: 16)).opacity(0.5)
                        }
                        HStack {
                            Text("Phone Number:").font(.custom("PollyRounded-Regular", size: 16))
                            
                            Spacer()
                            Text("\(phone)").font(.custom("PollyRounded-Regular", size: 16)).opacity(0.5)
                        }
                        HStack {
                            Text("Blood Type:").font(.custom("PollyRounded-Regular", size: 16))
                            
                            Spacer()
                            Text("\(bloodType)").font(.custom("PollyRounded-Regular", size: 16)).opacity(0.5)
                        }
                        Text("Donor Tier").font(.custom("Morjuis", size: 18)).padding()
                        HStack(spacing: 32){
                            Image(systemName: "1.circle")
                            Image(systemName: "2.circle")
                            Image(systemName: "3.circle")
                        }
                        
                    }
                        
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20).offset(y: 50)
                    
                    
                    Spacer()
                    
                    
                }.padding().navigationBarTitle("Home").navigationBarItems(trailing: NavigationLink(destination: Text("Inforamtion reguarding the purpose of this application and security features of it")) {
                    Image(systemName: "info.circle").padding()
                }.buttonStyle(PlainButtonStyle()))
                
            }
        .navigationBarTitle("").navigationBarHidden(true)
    }
}

struct patientView_Previews: PreviewProvider {
    static var previews: some View {
        paitentView()
    }
}

struct  DocumentPicker : UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<DocumentPicker>) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(documentTypes: [], in: .open)
        picker.allowsMultipleSelection = false
        return picker
    }
    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: UIViewControllerRepresentableContext<DocumentPicker>) {
        
    }
}

func autorizeHealthKit() {
    let read : Set<HKObjectType> = [
        
        HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)!,HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.bloodType)!
        
    ]
    let write : Set<HKSampleType> = []
    
    store.requestAuthorization(toShare: write, read: read){
        (success, error) -> Void in print("success")
    }
}


struct NotificationView : View {
    var body: some View{
        NavigationView {
            List(){
                Text("St. Jude Hospital")
            }.navigationBarTitle("Notifications")
        }
    }
}


struct Profile: View {
    
    @Binding var firstname : String
    @Binding var lastname : String
    @Binding var birthdate : Date
    @Binding var bloodType : String
    @Binding var phone : String
    @Binding var posCovid : Bool
    @Binding var docsugCovid : Bool
    @Binding var willTest : Bool
    @Binding var covidDocs: Bool
    @State var startcovidSimp: Date = {
        var dateComponents = DateComponents()
        dateComponents.year = 2020
        dateComponents.month = 4
        dateComponents.day = 1
        return Calendar.current.date(from: dateComponents) ?? Date()
    }()
    @State var currentcovidSimp = false
    @State var lastcovidSimp: Date = {
        var dateComponents = DateComponents()
        dateComponents.year = 2020
        dateComponents.month = 4
        dateComponents.day = 1
        return Calendar.current.date(from: dateComponents) ?? Date()
    }()
    @State var termsAccepted = false
    @State var age = 20
    
    
    
    var body: some View {
        
        Form {
            Section(header: Text("Contact Information")) {
                TextField("First Name",
                          text: $firstname).textContentType(.givenName)
                TextField("Last Name",
                          text: $lastname).textContentType(.familyName)
                TextField("Phone Number ", text: $phone).keyboardType(.phonePad).textContentType(.telephoneNumber)
                
                Picker(selection: $bloodType,
                       label: Text("Blood Type")) {
                        ForEach(Location.allLocations, id: \.self) { location in
                            Text(location).tag(location)
                        }
                }
                
                
                
                DatePicker(selection: $startcovidSimp, displayedComponents: .date,label: {Text("Birthdate")})
                
                if self.isUserInformationValid() {
                    Button(action: {
                        print("Updated profile")
                    }, label: {
                        Text("Update Profile")
                    })
                }
            }
            
            Section(header:Text("Covid-19 Questions")){
                Toggle(isOn: $posCovid, label: {
                    Text("Have you tested positive for Covid-19?")
                }
                )
                Toggle(isOn: $docsugCovid, label: {
                    Text("Did a doctor tell you probably had COVID-19 but wasn't able to test you?")
                }
                )
                Toggle(isOn: $willTest, label: {
                                       Text("Are you willing to test if it were avalible?")
                    
                                   }
                ).onTapGesture {
                    UserDefaults.standard.set(self.willTest, forKey: "willTest")
                }
                    Toggle(isOn: $covidDocs, label: {
                        Text("Was your COVID-19 diagnosis confirmed by a lab test?")
                    }
                    )
                if covidDocs {
                    Text("Make Sure to Upload Documents through the home Page.").font(.custom("PollyRounded-Regular", size: 16)).multilineTextAlignment(.center)
                }
DatePicker(selection: $startcovidSimp, label: {Text("Last day of symptoms")})
                DatePicker(selection: $lastcovidSimp, label: {Text("Start of Symptoms")})
                
                
            }
          
            
        }.navigationBarTitle(Text("Donor Profile"))
        
    }
    
    
    
    private func isUserInformationValid() -> Bool {
        if firstname.isEmpty {
            return false
        }
        
        if lastname.isEmpty {
            return false
        }
        
        if !termsAccepted {
            return false
        }
        
        if bloodType.isEmpty {
            return false
        }
        
        return true
    }
    
    
    //
    //struct Profile_Previews: PreviewProvider {
    //    static var previews: some View {
    //        Profile(firstname: $firstname, lastname: $lastname, bloodType: $bloodType, phone: $phone)
    //    }
    //}
    
    struct Location {
        static let allLocations = [
            "aPostive",
            "aNeagative",
            "abNegative",
            "oPositive",
            "oNegative",
            "abPositive",
            "bNegative",
            "bPositive",
            "Not Sure"
        ]
    }
    
}

//
//  heathkittest.swift
//  Clot
//
//  Created by Quin’darius Lyles-Woods on 4/16/20.
//  Copyright © 2020 Quin’darius Lyles-Woods. All rights reserved.
//





struct heathkittest: View {
    
    init() {
                UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font : UIFont(name:"Morjuis", size: 32)!]
    }
    var store = HKHealthStore()
    
    
    var body: some View {
       
            VStack {
               Text("Symptoms")
            }.navigationBarTitle("Log Sympotoms")
        }
    
    
    func autorizeHealthKit() {
        let read : Set<HKObjectType> = [
            
            HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)!,HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.bloodType)!
            
        ]
        let write : Set<HKSampleType> = []
        
        store.requestAuthorization(toShare: write, read: read){
            (success, error) -> Void in print("success")
        }
    }
    
}


