//
//  CheckboxRadioButtons.swift
//  ios-swiftui-views
//
//  Created by Ankit Solanki on 26/11/20.
//

import SwiftUI

//https://www.appcoda.com/colorpicker-datepicker/

struct CheckboxRadioButtons: View {
    @State var isChecked:Bool = false
    
    var body: some View {
        VStack {
            Button(action: toggle){
                HStack{
                    Image(systemName: isChecked ? "checkmark.square": "square")
                    
                    Text("Hello")
                }
            }
            
            HStack {
                Text("Gender")
                    .font(Font.headline)
                RadioButtonGroups { selected in
                    print("Selected Gender is: \(selected)")
                }
            }.padding()
        }
    }
    
    func toggle(){
        isChecked = !isChecked
    }
}

struct CheckboxRadioButtons_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxRadioButtons()
    }
}
