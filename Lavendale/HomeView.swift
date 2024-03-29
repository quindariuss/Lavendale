//
//  HomeView.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 4/21/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    
    
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font : UIFont(name:"Morjuis", size: 32)!]
    }
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "doc.on.doc")
                        Text("Review Legal Documents")
                        Spacer()
                    }.padding()
                    HStack {
                        NavigationLink(destination: patients()) {
                            Image(systemName: "waveform.path.ecg").foregroundColor(.black)
                            Text("See Monitered Donors").foregroundColor(.black)
                            Spacer()
                        }.padding()
                    }
                    HStack {
                        Image(systemName: "calendar")
                        Text("View Appointments")
                        Spacer()
                    }.padding()
                    HStack {
                        Image(systemName: "envelope.badge")
                        Text("Pending Donors")
                        Spacer()
                    }.padding()
                    testing_schedule().offset(y: -20)
                }.navigationBarTitle("Home")
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
struct patients: View {
    
    
    var body: some View{
        List(){
            malepatient3()
            femalepatient1()
            malepatient2()
            femalepatient2()
            malepatient2()
            femalepatient3()
            
        }.navigationBarTitle("Monitered Donors")
    }
}
struct femalepatient1: View {
    
    let maleName = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Thomas",
        "Charles",
        "Daniel",
        "Matthew",
        "Anthony",
        "Donald",
        "Mark",
        "Paul",
        "Steven",
        "Andrew",
        "Kenneth",
        "Joshua",
        "George",
        "Kevin",
        "Brian",
        "Edward",
        "Ronald",
        "Timothy",
        "Jason",
        "Jeffrey",
        "Ryan",
        "Jacob",
        "Gary",
        "Nicholas",
        "Eric",
        "Stephen",
        "Jonathan",
        "Larry",
        "Justin",
        "Scott",
        "Brandon",
        "Frank",
        "Benjamin",
        "Gregory",
        "Samuel",
        "Raymond",
        "Patrick",
        "Alexander",
        "Jack",
        "Dennis",
        "Jerry",
        "Tyler",
        "Aaron",
        "Jose",
        "Henry",
        "Douglas",
        "Adam",
        "Peter",
        "Nathan",
        "Zachary",
        "Walter",
        "Kyle",
        "Harold",
        "Carl",
        "Jeremy",
        "Keith",
        "Roger",
        "Gerald",
        "Ethan",
        "Arthur",
        "Terry",
        "Christian",
        "Sean",
        "Lawrence",
        "Austin",
        "Joe",
        "Noah",
        "Jesse",
        "Albert",
        "Bryan",
        "Billy",
        "Bruce",
        "Willie",
        "Jordan",
        "Dylan",
        "Alan",
        "Ralph",
        "Gabriel",
        "Roy",
        "Juan",
        "Wayne",
        "Eugene",
        "Logan",
        "Randy",
        "Louis",
        "Russell",
        "Vincent",
        "Philip",
        "Bobby",
        "Johnny",
    ]
    
    let femaleName =
        ["Mary",
         "Patricia",
         "Jennifer",
         "Linda",
         "Elizabeth",
         "Barbara",
         "Susan",
         "Jessica",
         "Sarah",
         "Karen",
         "Margaret",
         "Lisa",
         "Betty",
         "Dorothy",
         "Sandra",
         "Ashley",
         "Kimberly",
         "Donna",
         "Emily",
         "Michelle",
         "Carol",
         "Amanda",
         "Melissa",
         "Deborah",
         "Stephanie",
         "Rebecca",
         "Laura",
         "Sharon",
         "Cynthia",
         "Kathleen",
         "Helen",
         "Amy",
         "Shirley",
         "Angela",
         "Anna",
         "Brenda",
         "Pamela",
         "Nicole",
         "Ruth",
         "Katherine",
         "Samantha",
         "Christine",
         "Emma",
         "Catherine",
         "Debra",
         "Virginia",
         "Rachel",
         "Carolyn",
         "Janet",
         "Maria",
         "Heather",
         "Diane",
         "Julie",
         "Joyce",
         "Victoria",
         "Kelly",
         "Christina",
         "Joan",
         "Evelyn",
         "Lauren",
         "Judith",
         "Olivia",
         "Frances",
         "Martha",
         "Cheryl",
         "Megan",
         "Andrea",
         "Hannah",
         "Jacqueline",
         "Ann",
         "Jean",
         "Alice",
         "Kathryn",
         "Gloria",
         "Teresa",
         "Doris",
         "Sara",
         "Janice",
         "Julia",
         "Marie",
         "Madison",
         "Grace",
         "Judy",
         "Theresa",
         "Beverly",
         "Denise",
         "Marilyn",
         "Amber",
         "Danielle",
         "Abigail",
         "Brittany",
         "Rose",
         "Diana",
         "Natalie",
         "Sophia",
         "Alexis",
         "Lori"]
    
    let bloodType = [
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
    
    
    var body: some View{
        NavigationLink(destination: paitentView()) {   HStack {
            Rectangle()
                .frame(width: 7, height: 100)
                .cornerRadius(20)
                .foregroundColor(.red)
            VStack(alignment: .leading) {
                Text("\(femaleName.randomElement()!) \(maleName.randomElement()!)")
                Text("\(Int.random(in: 18 ..< 100)) Years Old").padding(.vertical, 16.0)
                Text("\(bloodType.randomElement()!)")
            }
            Spacer()
            VStack{
                 Button(action: {
                    let telephone = "tel://111-222-3334"
                    guard let url = URL(string: telephone) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Image(systemName: "phone")
                }.buttonStyle(PlainButtonStyle())
                Image(systemName: "bubble.left").padding(.vertical, 16.0)
                Image(systemName: "gobackward")
            }
            }
            
        }
    }
}
struct femalepatient2: View {
    
    let maleName = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Thomas",
        "Charles",
        "Daniel",
        "Matthew",
        "Anthony",
        "Donald",
        "Mark",
        "Paul",
        "Steven",
        "Andrew",
        "Kenneth",
        "Joshua",
        "George",
        "Kevin",
        "Brian",
        "Edward",
        "Ronald",
        "Timothy",
        "Jason",
        "Jeffrey",
        "Ryan",
        "Jacob",
        "Gary",
        "Nicholas",
        "Eric",
        "Stephen",
        "Jonathan",
        "Larry",
        "Justin",
        "Scott",
        "Brandon",
        "Frank",
        "Benjamin",
        "Gregory",
        "Samuel",
        "Raymond",
        "Patrick",
        "Alexander",
        "Jack",
        "Dennis",
        "Jerry",
        "Tyler",
        "Aaron",
        "Jose",
        "Henry",
        "Douglas",
        "Adam",
        "Peter",
        "Nathan",
        "Zachary",
        "Walter",
        "Kyle",
        "Harold",
        "Carl",
        "Jeremy",
        "Keith",
        "Roger",
        "Gerald",
        "Ethan",
        "Arthur",
        "Terry",
        "Christian",
        "Sean",
        "Lawrence",
        "Austin",
        "Joe",
        "Noah",
        "Jesse",
        "Albert",
        "Bryan",
        "Billy",
        "Bruce",
        "Willie",
        "Jordan",
        "Dylan",
        "Alan",
        "Ralph",
        "Gabriel",
        "Roy",
        "Juan",
        "Wayne",
        "Eugene",
        "Logan",
        "Randy",
        "Louis",
        "Russell",
        "Vincent",
        "Philip",
        "Bobby",
        "Johnny",
    ]
    
    let femaleName =
        ["Mary",
         "Patricia",
         "Jennifer",
         "Linda",
         "Elizabeth",
         "Barbara",
         "Susan",
         "Jessica",
         "Sarah",
         "Karen",
         "Margaret",
         "Lisa",
         "Betty",
         "Dorothy",
         "Sandra",
         "Ashley",
         "Kimberly",
         "Donna",
         "Emily",
         "Michelle",
         "Carol",
         "Amanda",
         "Melissa",
         "Deborah",
         "Stephanie",
         "Rebecca",
         "Laura",
         "Sharon",
         "Cynthia",
         "Kathleen",
         "Helen",
         "Amy",
         "Shirley",
         "Angela",
         "Anna",
         "Brenda",
         "Pamela",
         "Nicole",
         "Ruth",
         "Katherine",
         "Samantha",
         "Christine",
         "Emma",
         "Catherine",
         "Debra",
         "Virginia",
         "Rachel",
         "Carolyn",
         "Janet",
         "Maria",
         "Heather",
         "Diane",
         "Julie",
         "Joyce",
         "Victoria",
         "Kelly",
         "Christina",
         "Joan",
         "Evelyn",
         "Lauren",
         "Judith",
         "Olivia",
         "Frances",
         "Martha",
         "Cheryl",
         "Megan",
         "Andrea",
         "Hannah",
         "Jacqueline",
         "Ann",
         "Jean",
         "Alice",
         "Kathryn",
         "Gloria",
         "Teresa",
         "Doris",
         "Sara",
         "Janice",
         "Julia",
         "Marie",
         "Madison",
         "Grace",
         "Judy",
         "Theresa",
         "Beverly",
         "Denise",
         "Marilyn",
         "Amber",
         "Danielle",
         "Abigail",
         "Brittany",
         "Rose",
         "Diana",
         "Natalie",
         "Sophia",
         "Alexis",
         "Lori"]
    
    let bloodType = [
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
    
    
    var body: some View{
        NavigationLink(destination: paitentView()) {   HStack {
            Rectangle()
                .frame(width: 7, height: 100)
                .cornerRadius(20)
                .foregroundColor(.yellow)
            VStack(alignment: .leading) {
                Text("\(femaleName.randomElement()!) \(maleName.randomElement()!)")
                Text("\(Int.random(in: 18 ..< 100)) Years Old").padding(.vertical, 16.0)
                Text("\(bloodType.randomElement()!)")
            }
            Spacer()
            VStack{
                Button(action: {
                    let telephone = "tel://111-222-3334"
                    guard let url = URL(string: telephone) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Image(systemName: "phone")
                }.buttonStyle(PlainButtonStyle())
                
                Image(systemName: "bubble.left").padding(.vertical, 16.0)
                Image(systemName: "gobackward")
            }
            }
            
        }
    }
}
struct femalepatient3: View {
    
    let maleName = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Thomas",
        "Charles",
        "Daniel",
        "Matthew",
        "Anthony",
        "Donald",
        "Mark",
        "Paul",
        "Steven",
        "Andrew",
        "Kenneth",
        "Joshua",
        "George",
        "Kevin",
        "Brian",
        "Edward",
        "Ronald",
        "Timothy",
        "Jason",
        "Jeffrey",
        "Ryan",
        "Jacob",
        "Gary",
        "Nicholas",
        "Eric",
        "Stephen",
        "Jonathan",
        "Larry",
        "Justin",
        "Scott",
        "Brandon",
        "Frank",
        "Benjamin",
        "Gregory",
        "Samuel",
        "Raymond",
        "Patrick",
        "Alexander",
        "Jack",
        "Dennis",
        "Jerry",
        "Tyler",
        "Aaron",
        "Jose",
        "Henry",
        "Douglas",
        "Adam",
        "Peter",
        "Nathan",
        "Zachary",
        "Walter",
        "Kyle",
        "Harold",
        "Carl",
        "Jeremy",
        "Keith",
        "Roger",
        "Gerald",
        "Ethan",
        "Arthur",
        "Terry",
        "Christian",
        "Sean",
        "Lawrence",
        "Austin",
        "Joe",
        "Noah",
        "Jesse",
        "Albert",
        "Bryan",
        "Billy",
        "Bruce",
        "Willie",
        "Jordan",
        "Dylan",
        "Alan",
        "Ralph",
        "Gabriel",
        "Roy",
        "Juan",
        "Wayne",
        "Eugene",
        "Logan",
        "Randy",
        "Louis",
        "Russell",
        "Vincent",
        "Philip",
        "Bobby",
        "Johnny",
    ]
    
    let femaleName =
        ["Mary",
         "Patricia",
         "Jennifer",
         "Linda",
         "Elizabeth",
         "Barbara",
         "Susan",
         "Jessica",
         "Sarah",
         "Karen",
         "Margaret",
         "Lisa",
         "Betty",
         "Dorothy",
         "Sandra",
         "Ashley",
         "Kimberly",
         "Donna",
         "Emily",
         "Michelle",
         "Carol",
         "Amanda",
         "Melissa",
         "Deborah",
         "Stephanie",
         "Rebecca",
         "Laura",
         "Sharon",
         "Cynthia",
         "Kathleen",
         "Helen",
         "Amy",
         "Shirley",
         "Angela",
         "Anna",
         "Brenda",
         "Pamela",
         "Nicole",
         "Ruth",
         "Katherine",
         "Samantha",
         "Christine",
         "Emma",
         "Catherine",
         "Debra",
         "Virginia",
         "Rachel",
         "Carolyn",
         "Janet",
         "Maria",
         "Heather",
         "Diane",
         "Julie",
         "Joyce",
         "Victoria",
         "Kelly",
         "Christina",
         "Joan",
         "Evelyn",
         "Lauren",
         "Judith",
         "Olivia",
         "Frances",
         "Martha",
         "Cheryl",
         "Megan",
         "Andrea",
         "Hannah",
         "Jacqueline",
         "Ann",
         "Jean",
         "Alice",
         "Kathryn",
         "Gloria",
         "Teresa",
         "Doris",
         "Sara",
         "Janice",
         "Julia",
         "Marie",
         "Madison",
         "Grace",
         "Judy",
         "Theresa",
         "Beverly",
         "Denise",
         "Marilyn",
         "Amber",
         "Danielle",
         "Abigail",
         "Brittany",
         "Rose",
         "Diana",
         "Natalie",
         "Sophia",
         "Alexis",
         "Lori"]
    
    let bloodType = [
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
    
    
    var body: some View{
        NavigationLink(destination: paitentView()) {   HStack {
            Rectangle()
                .frame(width: 7, height: 100)
                .cornerRadius(20)
                .foregroundColor(.green)
            VStack(alignment: .leading) {
                Text("\(femaleName.randomElement()!) \(maleName.randomElement()!)")
                Text("\(Int.random(in: 18 ..< 100)) Years Old").padding(.vertical, 16.0)
                Text("\(bloodType.randomElement()!)")
            }
            Spacer()
            VStack{
                 Button(action: {
                    let telephone = "tel://111-222-3334"
                    guard let url = URL(string: telephone) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Image(systemName: "phone")
                }.buttonStyle(PlainButtonStyle())
                Image(systemName: "bubble.left").padding(.vertical, 16.0)
                Image(systemName: "gobackward")
            }
            }
            
        }
    }
}
struct malepatient1: View {
    
    let maleName = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Thomas",
        "Charles",
        "Daniel",
        "Matthew",
        "Anthony",
        "Donald",
        "Mark",
        "Paul",
        "Steven",
        "Andrew",
        "Kenneth",
        "Joshua",
        "George",
        "Kevin",
        "Brian",
        "Edward",
        "Ronald",
        "Timothy",
        "Jason",
        "Jeffrey",
        "Ryan",
        "Jacob",
        "Gary",
        "Nicholas",
        "Eric",
        "Stephen",
        "Jonathan",
        "Larry",
        "Justin",
        "Scott",
        "Brandon",
        "Frank",
        "Benjamin",
        "Gregory",
        "Samuel",
        "Raymond",
        "Patrick",
        "Alexander",
        "Jack",
        "Dennis",
        "Jerry",
        "Tyler",
        "Aaron",
        "Jose",
        "Henry",
        "Douglas",
        "Adam",
        "Peter",
        "Nathan",
        "Zachary",
        "Walter",
        "Kyle",
        "Harold",
        "Carl",
        "Jeremy",
        "Keith",
        "Roger",
        "Gerald",
        "Ethan",
        "Arthur",
        "Terry",
        "Christian",
        "Sean",
        "Lawrence",
        "Austin",
        "Joe",
        "Noah",
        "Jesse",
        "Albert",
        "Bryan",
        "Billy",
        "Bruce",
        "Willie",
        "Jordan",
        "Dylan",
        "Alan",
        "Ralph",
        "Gabriel",
        "Roy",
        "Juan",
        "Wayne",
        "Eugene",
        "Logan",
        "Randy",
        "Louis",
        "Russell",
        "Vincent",
        "Philip",
        "Bobby",
        "Johnny",
    ]
    
    let femaleName =
        ["Mary",
         "Patricia",
         "Jennifer",
         "Linda",
         "Elizabeth",
         "Barbara",
         "Susan",
         "Jessica",
         "Sarah",
         "Karen",
         "Margaret",
         "Lisa",
         "Betty",
         "Dorothy",
         "Sandra",
         "Ashley",
         "Kimberly",
         "Donna",
         "Emily",
         "Michelle",
         "Carol",
         "Amanda",
         "Melissa",
         "Deborah",
         "Stephanie",
         "Rebecca",
         "Laura",
         "Sharon",
         "Cynthia",
         "Kathleen",
         "Helen",
         "Amy",
         "Shirley",
         "Angela",
         "Anna",
         "Brenda",
         "Pamela",
         "Nicole",
         "Ruth",
         "Katherine",
         "Samantha",
         "Christine",
         "Emma",
         "Catherine",
         "Debra",
         "Virginia",
         "Rachel",
         "Carolyn",
         "Janet",
         "Maria",
         "Heather",
         "Diane",
         "Julie",
         "Joyce",
         "Victoria",
         "Kelly",
         "Christina",
         "Joan",
         "Evelyn",
         "Lauren",
         "Judith",
         "Olivia",
         "Frances",
         "Martha",
         "Cheryl",
         "Megan",
         "Andrea",
         "Hannah",
         "Jacqueline",
         "Ann",
         "Jean",
         "Alice",
         "Kathryn",
         "Gloria",
         "Teresa",
         "Doris",
         "Sara",
         "Janice",
         "Julia",
         "Marie",
         "Madison",
         "Grace",
         "Judy",
         "Theresa",
         "Beverly",
         "Denise",
         "Marilyn",
         "Amber",
         "Danielle",
         "Abigail",
         "Brittany",
         "Rose",
         "Diana",
         "Natalie",
         "Sophia",
         "Alexis",
         "Lori"]
    
    let bloodType = [
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
    
    
    var body: some View{
        NavigationLink(destination: paitentView()) {   HStack {
            Rectangle()
                .frame(width: 7, height: 100)
                .cornerRadius(20)
                .foregroundColor(.red)
            VStack(alignment: .leading) {
                Text("\(maleName.randomElement()!) \(maleName.randomElement()!)")
                Text("\(Int.random(in: 18 ..< 100)) Years Old").padding(.vertical, 16.0)
                Text("\(bloodType.randomElement()!)")
            }
            Spacer()
            VStack{
                 Button(action: {
                    let telephone = "tel://111-222-3334"
                    guard let url = URL(string: telephone) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Image(systemName: "phone")
                }.buttonStyle(PlainButtonStyle())
                Image(systemName: "bubble.left").padding(.vertical, 16.0)
                Image(systemName: "gobackward")
            }
            }
            
        }
    }
}
struct malepatient2: View {
    
    let maleName = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Thomas",
        "Charles",
        "Daniel",
        "Matthew",
        "Anthony",
        "Donald",
        "Mark",
        "Paul",
        "Steven",
        "Andrew",
        "Kenneth",
        "Joshua",
        "George",
        "Kevin",
        "Brian",
        "Edward",
        "Ronald",
        "Timothy",
        "Jason",
        "Jeffrey",
        "Ryan",
        "Jacob",
        "Gary",
        "Nicholas",
        "Eric",
        "Stephen",
        "Jonathan",
        "Larry",
        "Justin",
        "Scott",
        "Brandon",
        "Frank",
        "Benjamin",
        "Gregory",
        "Samuel",
        "Raymond",
        "Patrick",
        "Alexander",
        "Jack",
        "Dennis",
        "Jerry",
        "Tyler",
        "Aaron",
        "Jose",
        "Henry",
        "Douglas",
        "Adam",
        "Peter",
        "Nathan",
        "Zachary",
        "Walter",
        "Kyle",
        "Harold",
        "Carl",
        "Jeremy",
        "Keith",
        "Roger",
        "Gerald",
        "Ethan",
        "Arthur",
        "Terry",
        "Christian",
        "Sean",
        "Lawrence",
        "Austin",
        "Joe",
        "Noah",
        "Jesse",
        "Albert",
        "Bryan",
        "Billy",
        "Bruce",
        "Willie",
        "Jordan",
        "Dylan",
        "Alan",
        "Ralph",
        "Gabriel",
        "Roy",
        "Juan",
        "Wayne",
        "Eugene",
        "Logan",
        "Randy",
        "Louis",
        "Russell",
        "Vincent",
        "Philip",
        "Bobby",
        "Johnny",
    ]
    
    let femaleName =
        ["Mary",
         "Patricia",
         "Jennifer",
         "Linda",
         "Elizabeth",
         "Barbara",
         "Susan",
         "Jessica",
         "Sarah",
         "Karen",
         "Margaret",
         "Lisa",
         "Betty",
         "Dorothy",
         "Sandra",
         "Ashley",
         "Kimberly",
         "Donna",
         "Emily",
         "Michelle",
         "Carol",
         "Amanda",
         "Melissa",
         "Deborah",
         "Stephanie",
         "Rebecca",
         "Laura",
         "Sharon",
         "Cynthia",
         "Kathleen",
         "Helen",
         "Amy",
         "Shirley",
         "Angela",
         "Anna",
         "Brenda",
         "Pamela",
         "Nicole",
         "Ruth",
         "Katherine",
         "Samantha",
         "Christine",
         "Emma",
         "Catherine",
         "Debra",
         "Virginia",
         "Rachel",
         "Carolyn",
         "Janet",
         "Maria",
         "Heather",
         "Diane",
         "Julie",
         "Joyce",
         "Victoria",
         "Kelly",
         "Christina",
         "Joan",
         "Evelyn",
         "Lauren",
         "Judith",
         "Olivia",
         "Frances",
         "Martha",
         "Cheryl",
         "Megan",
         "Andrea",
         "Hannah",
         "Jacqueline",
         "Ann",
         "Jean",
         "Alice",
         "Kathryn",
         "Gloria",
         "Teresa",
         "Doris",
         "Sara",
         "Janice",
         "Julia",
         "Marie",
         "Madison",
         "Grace",
         "Judy",
         "Theresa",
         "Beverly",
         "Denise",
         "Marilyn",
         "Amber",
         "Danielle",
         "Abigail",
         "Brittany",
         "Rose",
         "Diana",
         "Natalie",
         "Sophia",
         "Alexis",
         "Lori"]
    
    let bloodType = [
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
    
    
    var body: some View{
        NavigationLink(destination: paitentView()) {   HStack {
            Rectangle()
                .frame(width: 7, height: 100)
                .cornerRadius(20)
                .foregroundColor(.yellow)
            VStack(alignment: .leading) {
                Text("\(maleName.randomElement()!) \(maleName.randomElement()!)")
                Text("\(Int.random(in: 18 ..< 100)) Years Old").padding(.vertical, 16.0)
                Text("\(bloodType.randomElement()!)")
            }
            Spacer()
            VStack{
                 Button(action: {
                    let telephone = "tel://111-222-3334"
                    guard let url = URL(string: telephone) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Image(systemName: "phone")
                }.buttonStyle(PlainButtonStyle())
                Image(systemName: "bubble.left").padding(.vertical, 16.0)
                Image(systemName: "gobackward")
            }
            }
            
        }
    }
}
struct malepatient3: View {
    
    let maleName = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Thomas",
        "Charles",
        "Daniel",
        "Matthew",
        "Anthony",
        "Donald",
        "Mark",
        "Paul",
        "Steven",
        "Andrew",
        "Kenneth",
        "Joshua",
        "George",
        "Kevin",
        "Brian",
        "Edward",
        "Ronald",
        "Timothy",
        "Jason",
        "Jeffrey",
        "Ryan",
        "Jacob",
        "Gary",
        "Nicholas",
        "Eric",
        "Stephen",
        "Jonathan",
        "Larry",
        "Justin",
        "Scott",
        "Brandon",
        "Frank",
        "Benjamin",
        "Gregory",
        "Samuel",
        "Raymond",
        "Patrick",
        "Alexander",
        "Jack",
        "Dennis",
        "Jerry",
        "Tyler",
        "Aaron",
        "Jose",
        "Henry",
        "Douglas",
        "Adam",
        "Peter",
        "Nathan",
        "Zachary",
        "Walter",
        "Kyle",
        "Harold",
        "Carl",
        "Jeremy",
        "Keith",
        "Roger",
        "Gerald",
        "Ethan",
        "Arthur",
        "Terry",
        "Christian",
        "Sean",
        "Lawrence",
        "Austin",
        "Joe",
        "Noah",
        "Jesse",
        "Albert",
        "Bryan",
        "Billy",
        "Bruce",
        "Willie",
        "Jordan",
        "Dylan",
        "Alan",
        "Ralph",
        "Gabriel",
        "Roy",
        "Juan",
        "Wayne",
        "Eugene",
        "Logan",
        "Randy",
        "Louis",
        "Russell",
        "Vincent",
        "Philip",
        "Bobby",
        "Johnny",
    ]
    
    let femaleName =
        ["Mary",
         "Patricia",
         "Jennifer",
         "Linda",
         "Elizabeth",
         "Barbara",
         "Susan",
         "Jessica",
         "Sarah",
         "Karen",
         "Margaret",
         "Lisa",
         "Betty",
         "Dorothy",
         "Sandra",
         "Ashley",
         "Kimberly",
         "Donna",
         "Emily",
         "Michelle",
         "Carol",
         "Amanda",
         "Melissa",
         "Deborah",
         "Stephanie",
         "Rebecca",
         "Laura",
         "Sharon",
         "Cynthia",
         "Kathleen",
         "Helen",
         "Amy",
         "Shirley",
         "Angela",
         "Anna",
         "Brenda",
         "Pamela",
         "Nicole",
         "Ruth",
         "Katherine",
         "Samantha",
         "Christine",
         "Emma",
         "Catherine",
         "Debra",
         "Virginia",
         "Rachel",
         "Carolyn",
         "Janet",
         "Maria",
         "Heather",
         "Diane",
         "Julie",
         "Joyce",
         "Victoria",
         "Kelly",
         "Christina",
         "Joan",
         "Evelyn",
         "Lauren",
         "Judith",
         "Olivia",
         "Frances",
         "Martha",
         "Cheryl",
         "Megan",
         "Andrea",
         "Hannah",
         "Jacqueline",
         "Ann",
         "Jean",
         "Alice",
         "Kathryn",
         "Gloria",
         "Teresa",
         "Doris",
         "Sara",
         "Janice",
         "Julia",
         "Marie",
         "Madison",
         "Grace",
         "Judy",
         "Theresa",
         "Beverly",
         "Denise",
         "Marilyn",
         "Amber",
         "Danielle",
         "Abigail",
         "Brittany",
         "Rose",
         "Diana",
         "Natalie",
         "Sophia",
         "Alexis",
         "Lori"]
    
    let bloodType = [
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
    
    
    var body: some View{
        NavigationLink(destination: paitentView()) {   HStack {
            Rectangle()
                .frame(width: 7, height: 100)
                .cornerRadius(20)
                .foregroundColor(.green)
            VStack(alignment: .leading) {
                Text("\(maleName.randomElement()!) \(maleName.randomElement()!)")
                Text("\(Int.random(in: 18 ..< 100)) Years Old").padding(.vertical, 16.0)
                Text("\(bloodType.randomElement()!)")
            }
            Spacer()
            VStack{
                 Button(action: {
                    let telephone = "tel://111-222-3334"
                    guard let url = URL(string: telephone) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Image(systemName: "phone")
                }.buttonStyle(PlainButtonStyle())
                Image(systemName: "bubble.left").padding(.vertical, 16.0)
                Image(systemName: "gobackward")
            }
            }
            
        }
    }
}
struct patient_: View {
    var num1 =   patient(name: "hello", phoneNumber: "hello", bloodType: "hello")
    
    var body: some View{
        Text("\(num1.name)")
    }
}
