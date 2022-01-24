//
//  InstagramHomeView.swift
//  SwiftUI-Basics
//
//

import SwiftUI

struct InstagramHomeView: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        TabView {
            List {
                InstagramStatusView(userImageName: "male-user")
                InstagramPostView(userName: "Mark C. Nolen", userImageName: "male-user", userLocation: "Fort Myers, FL 33912", imageName: "1")
                InstagramPostView(userName: "Kathryn G. Gonzalez", userImageName: "female-user", userLocation: "Huntsville, AL 35802", imageName: "2")
                InstagramPostView(userName: "Jose H. McFarlane", userImageName: "male-user", userLocation: "Monroe, LA 71209", imageName: "3")
                InstagramPostView(userName: "Josefina J. Torres", userImageName: "female-user", userLocation: "Minneapolis, MN 55415", imageName: "4")
                InstagramPostView(userName: "Dennis R. Wise", userImageName: "male-user", userLocation: "Chennai", imageName: "5")
                InstagramPostView(userName: "Lenora R. Davis", userImageName: "female-user", userLocation: "Traverse City, MI 49684", imageName: "6")
                InstagramPostView(userName: "Charles Y. Soto", userImageName: "male-user", userLocation: "Appleton, WI 54911", imageName: "7")
            }.tabItem{
                Image(systemName: "house.fill").foregroundColor(Color.black)
                Text("Home")
            }
            Text("Reels").tabItem{
                Image(systemName: "video.circle").foregroundColor(Color.black)
                Text("Reels")
            }
            Text("New Post").tabItem{
                Image(systemName: "plus.circle")
                Text("New post")
            }
            Text("Favorite").tabItem{
                Image(systemName: "heart.fill")
                Text("Favorites")
            }
            InstagramProfileView().tabItem{
                Image(systemName: "person.circle")
                Text("Profile")
            }
            
//                NavigationView {
//                    List(1...10, id: \.self) { index in
//
//
//                    }
//                }
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
             
            
        }.navigationBarTitle("Instagram", displayMode: .inline).navigationBarHidden(true).navigationBarBackButtonHidden(true).navigationBarItems(trailing: HStack(spacing: 30){
                
                NavigationLink(
                    destination: InstagramSearchView(),
                    tag: 1,
                    selection: $selection) {
                    Button(action: {
                        print("Search navigation bar button")
                        self.selection = 2
                    }, label: {
                        Image(systemName: "magnifyingglass").foregroundColor(.black)
                    })
                }
            Button(action: {
                print("Message navigation bar button")
            }, label: {
                Image(systemName: "message").foregroundColor(.black)
            })
        })
    }
}

struct InstagramHomeView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramHomeView()
    }
}
