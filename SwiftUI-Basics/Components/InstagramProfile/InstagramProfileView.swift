//
//  InstagramProfileView.swift
//  SwiftUI-Basics
//
//  Created by Mac-OBS-09 on 01/03/20.
//  Copyright © 2020 Mac-OBS-09. All rights reserved.
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
