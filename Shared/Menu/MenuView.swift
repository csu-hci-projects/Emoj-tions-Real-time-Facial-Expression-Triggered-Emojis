//
//  MenuView.swift
//  Emojtion (iOS)
//
//  Created by Jake Mismas on 4/14/22.
//

import SwiftUI

struct MenuView: View {
    @State var EmojtionOn = false
    
    var body: some View {
        VStack{
            
            // Title and Settings Button
            HStack{
                Text("Emojtion")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(Color.gray)
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.top)
            .padding(.horizontal)
            
            Divider()
                .padding(.top, 4)
            
            Image("RobotEmoji")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(0)
            
            Toggle(isOn: $EmojtionOn, label: {
                Text("Activate Emojtion")
            })
                .toggleStyle(SwitchToggleStyle(tint: .green))
                .padding(.horizontal)
                .help(Text("Toggle Emojtion On/Off"))
                .padding(.bottom)
                
            Spacer(minLength: 0)
        }
        .frame(width: 200, height: 250)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
