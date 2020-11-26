//
//  Switch.swift
//  ios-swiftui-views
//
//  Created by Ankit Solanki on 26/11/20.
//

import SwiftUI

struct Switch: View {
    @State private var showGreeting = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Show welcome message")
            }.padding()
            
            if showGreeting {
                Text("Hello World!")
            }
        }
    }
}

struct Switch_Previews: PreviewProvider {
    static var previews: some View {
        Switch()
    }
}
