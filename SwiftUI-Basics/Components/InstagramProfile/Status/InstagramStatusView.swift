//
//  InstagramStatusView.swift
//  SwiftUI-Basics
//
//  Created by Dinesh Nagarajan on 17/12/20.
//

import Foundation
import SwiftUI

struct InstagramStatusView: View {
    @State var userImageName: String = ""
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10.0) {
                VStack(spacing: 10){Image(systemName: "plus.circle").frame(width: 20, height: 20).padding()
                    Text("Your Story").font(.system(size: 12))
                }.frame(width: 90, height: 90)
                VStack{
                    StatusImageView(
                               outerCircleColor: Color.blue,
                               statusImage: "dn-cover")
                    Text("Dinesh Nagarajan").font(.system(size: 12))
                }
                VStack{
                    StatusImageView(
                               outerCircleColor: Color.blue,
                               statusImage: "dn-cover")
                    Text("User Name").font(.system(size: 12))
                }
                VStack{StatusImageView(
                    outerCircleColor: Color.blue,
                    statusImage: "dn-cover")
                    Text("User Name").font(.system(size: 12))
                }
                VStack{StatusImageView(
                    outerCircleColor: Color.blue,
                    statusImage: "dn-cover")
                    Text("User Name").font(.system(size: 12))
                }
                VStack{StatusImageView(
                    outerCircleColor: Color.blue,
                    statusImage: "dn-cover")
                    Text("User Name").font(.system(size: 12))
                }
                VStack{StatusImageView(
                    outerCircleColor: Color.blue,
                    statusImage: "dn-cover")
                    Text("User Name").font(.system(size: 12))
                }
                VStack{StatusImageView(
                    outerCircleColor: Color.blue,
                    statusImage: "dn-cover")
                    Text("User Name").font(.system(size: 12))
                }
            }
        }.frame(height:80)
    }
}

struct InstagramStatusView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramStatusView(userImageName: "male-user")
    }
}
