//
//  PickerControls.swift
//  ios-swiftui-views
//
//  Created by Ankit Solanki on 26/11/20.
//

import SwiftUI

struct PickerControls: View {
    @State private var favoriteColor = 0
    var colors = ["Red", "Green", "Blue"]
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Segmented Control").font(.largeTitle)
                Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                    ForEach(0..<colors.count) { index in
                        Text(self.colors[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Text("Options Menu").font(.largeTitle)
                Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                    ForEach(0..<colors.count) { index in
                        Text(self.colors[index]).tag(index)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
                Text("Wheel Picker").font(.largeTitle)
                Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                    ForEach(0..<colors.count) { index in
                        Text(self.colors[index]).tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
            }
            
            .navigationBarTitle("Value: \(colors[favoriteColor])")
        }
    }
}

struct PickerControls_Previews: PreviewProvider {
    static var previews: some View {
        PickerControls()
    }
}
