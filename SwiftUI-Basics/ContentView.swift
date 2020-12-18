//
//  ContentView.swift
//  SwiftUI-Basics
//
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
            ProfileImage()
            Text("Dinesh Nagarajan").font(.title).foregroundColor(.blue)
            Divider()
            NavigationLink(destination: InstagramHomeView(), tag: 1, selection: $selection) {
                    Button(action: {
                        self.selection = 1
                    }) {
                        Text("Get Started").fontWeight(.regular).font(.title).padding(2).foregroundColor(.blue).padding(10).overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 5)
                        )
                    }.offset(y: 40)
                }
            Spacer()
            Text("www.dineshnagarajan.dev").font(.body).foregroundColor(.black).offset(y: 0).padding()
                }.padding().offset(x: 5, y: 5).navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
