//
//  InstagramProfileUserDetailView.swift
//  SwiftUI-Basics
//
//  Created by Mac-OBS-09 on 01/03/20.
//  Copyright © 2020 Mac-OBS-09. All rights reserved.
//

import SwiftUI

struct InstagramProfileUserDetailView: View {
    
    @State var profileImageName: String = ""
    @State var profilePostCount: Int = 0
    @State var profileFollowerCount: Int = 0
    @State var profileFollowingCount: Int = 0
    
    var body: some View {
        VStack {
            HStack(spacing: 30) {
                ProfileImage(profileImageWidth: 100, profileImageHeight: 100, profileImageLineWidth: 2, profileImageShadowRadius: 10, profileImageName: profileImageName)
                VStack {
                    Text("\(profilePostCount)").fontWeight(.bold)
                    Text("Post").fontWeight(.regular)
                }
                VStack {
                    Text("\(profileFollowerCount)").fontWeight(.bold)
                    Text("Followers").fontWeight(.regular)
                }
                VStack {
                    Text("\(profileFollowingCount)").fontWeight(.bold)
                    Text("Following").fontWeight(.regular)
                }
            }.frame(minWidth: 0, maxWidth: .infinity)
            Text("Dinesh Nagarajan").font(.headline).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).offset(x: 20)
            Text("Twitter: dineshn19 \n check more files of description").font(.subheadline).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).offset(x: 20)
            Button(action: {
                print("User url tapped.")
            }){
                Text("dineshnagarajan.dev").font(.subheadline).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).offset(x: 20).foregroundColor(Color.blue)
            }
            HStack {
                Button(action: {}){
                    Text("Edit Profile")
                }.offset(x: 20)
                Spacer()
                Button(action: {}){
                    Text("Promitions")
                }.offset(x: -20)
                }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
        }
    }
}

struct InstagramProfileUserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramProfileUserDetailView(profileImageName: "dn-cover", profilePostCount: 10, profileFollowerCount: 100, profileFollowingCount: 200)
    }
}
