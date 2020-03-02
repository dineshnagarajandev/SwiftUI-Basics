//
//  ComponentsListView.swift
//  SwiftUI-Basics
//
//  Created by Mac-OBS-09 on 28/02/20.
//  Copyright © 2020 Mac-OBS-09. All rights reserved.
//

import SwiftUI

struct ComponentsListView: View {
    
    @State var name: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            TextField("User name", text: $name)
            SecureField("Password", text: $password)
            Text("name: \(name)")
            Text("password: \(password)")
            Button("Validate") {
                if (self.name == "") || (self.password == "") {
                    // Invalid
                    print(self.name)
                    print(self.password)
                }
            }
        }.offset(x: 10)
    }
}

struct ComponentsListView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsListView()
    }
}
