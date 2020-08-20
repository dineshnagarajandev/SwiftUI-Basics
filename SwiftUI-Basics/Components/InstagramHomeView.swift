//
//  InstagramHomeView.swift
//  SwiftUI-Basics
//
//  Created by Mac-OBS-09 on 01/03/20.
//  Copyright © 2020 Mac-OBS-09. All rights reserved.
//

import SwiftUI

struct InstagramHomeView: View {
    var body: some View {
        TabView {
            List {
                InstagramPostView(userName: "Mark C. Nolen", userImageName: "male-user", userLocation: "Fort Myers, FL 33912", imageName: "1")
                InstagramPostView(userName: "Kathryn G. Gonzalez", userImageName: "female-user", userLocation: "Huntsville, AL 35802", imageName: "2")
                InstagramPostView(userName: "Jose H. McFarlane", userImageName: "male-user", userLocation: "Monroe, LA 71209", imageName: "3")
                InstagramPostView(userName: "Josefina J. Torres", userImageName: "female-user", userLocation: "Minneapolis, MN 55415", imageName: "4")
                InstagramPostView(userName: "Dennis R. Wise", userImageName: "male-user", userLocation: "Chennai", imageName: "5")
                InstagramPostView(userName: "Lenora R. Davis", userImageName: "female-user", userLocation: "Traverse City, MI 49684", imageName: "6")
                InstagramPostView(userName: "Charles Y. Soto", userImageName: "male-user", userLocation: "Appleton, WI 54911", imageName: "7")
            }.tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            Text("Search").tabItem{
                Image(systemName: "magnifyingglass.circle")
                Text("Search")
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
        }.navigationBarTitle("dineshnagarajan.dev", displayMode: .automatic).navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}

struct InstagramHomeView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramHomeView()
    }
}
