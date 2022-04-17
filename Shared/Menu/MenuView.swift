//
//  MenuView.swift
//  Emojtion (iOS)
//
//  Created by Jake Mismas on 4/14/22.
//

import SwiftUI
import LoadingButton

struct MenuView: View {
    @State var EmojtionOn = false
    @State var isLoading: Bool = false
    
    @StateObject private var model = MyModel()
    
    var body: some View {
        VStack{
            HStack{
                
                Text("Emojtion")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("v0.5")
                    .italic()
                    .foregroundColor(.primary)
                
            }
            .padding(.horizontal)
            
            Divider()
            
            VStack (spacing: 0){
                Text(model.emoji)
                    .font(Font.system(size: 128))
                    .padding(.top,-9)
                
                Button(action: {
                    print("Face Scan Triggered")
                    
                }, label: {
                    HStack{
                        Image(systemName: "faceid").foregroundColor(.white)
                            .foregroundColor(Color.gray)
                            .font(Font.system(size: 15))
                        Text("Scan Face")
                            .foregroundColor(.white)
                    }
                })
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Text("...or press ⌥ ⌘ F")
                    .italic()
                    .foregroundColor(.gray)
            }
        }
        .frame(width: 150,height: 250)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
