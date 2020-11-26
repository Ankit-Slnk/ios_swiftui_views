//
//  ContentView.swift
//  ios-swiftui-views
//
//  Created by Ankit Solanki on 25/11/20.
//

import SwiftUI

//https://www.appcoda.com/matchedgeometryeffect/

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                NavigationLink(destination: DrawerScreenView()){
                    Text("Drawer")
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
                
                NavigationLink(destination: BottomNavigationBarScreen()){
                    Text("Bottom Navgation Bar")
                }.buttonStyle(PlainButtonStyle()).padding()
                
                NavigationLink(destination: PickerControls()){
                    Text("Picker Controls")
                }.buttonStyle(PlainButtonStyle()).padding()
                
                NavigationLink(destination: CheckboxRadioButtons()){
                    Text("Checkbox and Radio Buttons")
                }.buttonStyle(PlainButtonStyle()).padding()
                
                NavigationLink(destination: Switch()){
                    Text("Switch (Toggle)")
                }.buttonStyle(PlainButtonStyle()).padding()
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
