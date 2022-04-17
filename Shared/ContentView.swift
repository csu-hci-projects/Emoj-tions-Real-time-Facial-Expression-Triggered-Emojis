//
//  ContentView.swift
//  Shared
//
//  Created by Jake Mismas on 4/14/22.
//

import SwiftUI

class MyModel: ObservableObject {
    @State var emoji: String = "🤖"
}

struct ContentView: View {
    @StateObject private var model = MyModel()
    @State private var emotion : String = ""
    
    var body: some View {
        TextField(
                "Shown Emotion...",
                text: $emotion
            )
            .onSubmit {
                print(emotion)
                switch emotion{
                case "Anger":
                    model.emoji = "😠"
                    break;
                case "Contempt":
                    model.emoji = "🙄"
                    break;
                case "Disgust":
                    model.emoji = "🤮"
                    break;
                case "Fear":
                    model.emoji = "😦"
                    break;
                case "Happiness":
                    model.emoji = "😀"
                    break;
                case "Neutral":
                    model.emoji = "😐"
                    break;
                case "Sadness":
                    model.emoji = "😢"
                    break;
                case "Surprise":
                    model.emoji = "😯"
                    break;
                default:
                    model.emoji = "😶"
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
