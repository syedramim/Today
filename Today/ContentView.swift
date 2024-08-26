//
//  ContentView.swift
//  Today
//
//  Created by Kaneis Zontanos on 8/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var Zoomed = false
    let fontSize = 50
    
    var body: some View {
        VStack {
            Text(Date.now, format: .dateTime.day().month())
                .font(.Signika(CGFloat(fontSize)))
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                .scaleEffect(Zoomed ? CGFloat(fontSize/10) : 1.0)
                .animation(.easeOut(duration: 1), value: Zoomed)
                .onAppear(perform: {
                    Zoomed.toggle()
                })
                
                

            
        }
    }
}

#Preview {
    ContentView()
}
