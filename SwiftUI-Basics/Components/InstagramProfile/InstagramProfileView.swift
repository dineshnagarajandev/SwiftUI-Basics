//
//  InstagramProfileView.swift
//  SwiftUI-Basics
//
//

import SwiftUI

struct InstagramProfileView: View {
    var body: some View {
        List {
            InstagramProfileUserDetailView(profileImageName: "dn-cover", profilePostCount: 10, profileFollowerCount: 100, profileFollowingCount: 200)
        }
    }
}

struct InstagramProfileView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramProfileView()
    }
}
