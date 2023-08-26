//
//  ContentView.swift
//  MaindGame
//
//  Created by Roman Riepa on 25.08.2023.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🕷️", "😈"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    
    @State var isFaceUp: Bool = true
    let content: String
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
