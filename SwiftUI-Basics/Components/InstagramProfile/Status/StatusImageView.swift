//
//  StatusImageView.swift
//  SwiftUI-Basics
//
//  Created by Dinesh Nagarajan on 19/12/20.
//  Copyright © 2020 Mac-OBS-09. All rights reserved.
//

import Foundation
import SwiftUI

struct StatusImageView: View {
    @State var outerCircleColor: Color = Color.black
    @State var statusImage: String = ""
    
    var body: some View {
        Image(statusImage).resizable()
            .clipShape(Circle()).frame(width: 60, height: 60).clipShape(Circle()).overlay(Circle().stroke(outerCircleColor, lineWidth: 2)).shadow(radius: 0)
    }
}
