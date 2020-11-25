//
//  DrawerScreenView.swift
//  ios-swiftui-views
//
//  Created by Ankit Solanki on 25/11/20.
//

import SwiftUI

struct DrawerScreenView: View {
    @State var isDrawerOpen: Bool = false
    
    var body: some View {
        ZStack {
            NavigationView {
                EmptyView()
                    .navigationBarTitle(Text("Navigation Drawer"))
                    .navigationBarItems(leading: Button(action: {
                        self.isDrawerOpen.toggle()
                    }) {
                        Image(systemName: "sidebar.left")
                    })
            }
            
            NavigationDrawer(isOpen: self.$isDrawerOpen)
        }
    }
}

struct NavigationDrawer: View {
    private let width = UIScreen.main.bounds.width - 100
    @Binding var isOpen: Bool
    
    var body: some View {
        HStack {
            DrawerContent()
                .frame(width: self.width)
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.default)
            Spacer()
        }.onTapGesture {
            self.isOpen.toggle()
        }
    }
}

struct DrawerScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DrawerScreenView()
    }
}

struct DrawerContent: View {
    var body: some View {
        Color.blue
    }
}
