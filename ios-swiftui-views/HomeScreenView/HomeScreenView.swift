//
//  ContentView.swift
//  ios-swiftui-views
//
//  Created by Ankit Solanki on 25/11/20.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                NavigationLink(destination: DrawerScreenView()){
                    Text("Drawer")
                }.buttonStyle(PlainButtonStyle())
                                
                NavigationLink(destination: BottomNavigationBarScreen()){
                    Text("Bottom Navgation Bar")
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
