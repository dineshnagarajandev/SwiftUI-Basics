//
//  InstagramPostView.swift
//  SwiftUI-Basics
//
//

import SwiftUI
import UIKit

struct InstagramPostView: View {
    
    @State var userName: String = ""
    @State var userImageName: String = ""
    @State var userLocation: String = ""
    @State var imageName: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // User image, name and more option container view
            HStack {
                Image(userImageName).resizable().frame(width: 60, height: 60)
                VStack(alignment: .leading) {
                    Text(userName).fontWeight(.bold)
                    Text(userLocation)
                }.offset()
                Spacer()
                Button(action: {
                    print("Option button tapped")
                }){
                    Image(systemName: "ellipsis.circle.fill")
                }
                .frame(width: 60, height: 60)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            ScrollView(.horizontal, showsIndicators: false) {
                Image(imageName).resizable().aspectRatio(contentMode: ContentMode.fit)
            }.frame(height: 360)
            HStack(alignment: .top, spacing: 10) {
                Button(action: {
                    
                }){
                    // Favorite
                    Image(systemName: "hand.thumbsup.fill")
                }.padding(20)
                Button(action: {
                    
                }){
                    // Comment
                    Image(systemName: "bubble.right")
                }.padding(20)
                Button(action: {
                    
                }){
                    // Share
                    Image(systemName: "paperplane")
                }.padding(20)
                Spacer()
                Button(action: {
                    
                }){
                    // Save
                    Image(systemName: "arrow.down.doc.fill")
                }.padding(20)
            }
        }
        .navigationBarTitle(Text("Home"))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct InstagramPostView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramPostView(userName: "Dinesh", userImageName: "male-user", userLocation: "Chennai", imageName: "3")
    }
}
