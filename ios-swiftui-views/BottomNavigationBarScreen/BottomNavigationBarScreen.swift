//
//  BottomNavigationBarScreen.swift
//  ios-swiftui-views
//
//  Created by Ankit Solanki on 25/11/20.
//

import SwiftUI

struct BottomNavigationBarScreen: View {
    var body: some View {
        NavigationView {
            TabView {
                List(1...10, id: \.self) { index in
                    NavigationLink(
                        destination: Text("Item #\(index) Details"),
                        label: {
                            Text("Item #\(index)")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                        })
                    
                }
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favourites")
                }
                
                Text("Friends Screen")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Friends")
                    }
                
                Text("Nearby Screen")
                    .tabItem {
                        Image(systemName: "mappin.circle.fill")
                        Text("Nearby")
                    }
            }
            //            .onAppear() {
            //                 to change background color of bottom bar
            //                UITabBar.appearance().barTintColor = .white
            //            }
            .accentColor(Color.red)
            
            .navigationTitle("TabView Demo")
        }
    }
}

struct BottomNavigationBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationBarScreen()
    }
}
