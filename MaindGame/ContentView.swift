//
//  ContentView.swift
//  MaindGame
//
//  Created by Roman Riepa on 25.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            
                CardView()
                CardView()
                CardView()
           
        
    }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    
    @State private var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻")
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
