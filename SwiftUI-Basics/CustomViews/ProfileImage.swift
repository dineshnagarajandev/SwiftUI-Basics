//
//  ProfileImageView.swift
//  SwiftUI-Basics
//
//  Created by Mac-OBS-09 on 27/02/20.
//  Copyright © 2020 Mac-OBS-09. All rights reserved.
//

import SwiftUI

struct ProfileImage: View {
    
    @State var profileImageWidth: CGFloat = 0 // 150
    @State var profileImageHeight: CGFloat = 0 // 150
    @State var profileImageLineWidth: CGFloat = 0 // 2
    @State var profileImageShadowRadius: CGFloat = 0 // 10
    @State var profileImageName: String = ""
    
    var body: some View {
        Image(profileImageName).resizable()
            .clipShape(Circle()).frame(width: profileImageWidth, height: profileImageHeight).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: profileImageLineWidth)).shadow(radius: profileImageShadowRadius)
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(profileImageWidth: 150, profileImageHeight: 150, profileImageLineWidth: 2, profileImageShadowRadius: 10, profileImageName: "dn-cover")
    }
}
