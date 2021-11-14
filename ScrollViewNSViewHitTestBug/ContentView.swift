//
//  ContentView.swift
//  ScrollViewNSViewHitTestBug
//
//  Created by Matt Curtis on 11/13/21.
//

import SwiftUI

struct AnNSViewRepresentable: NSViewRepresentable {
    
    func makeNSView(context: Context) -> some NSView {
        NSView()
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) { }
    
}

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Button("Test") { }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                AnNSViewRepresentable()
                    .frame(height: 600)
                    //  Gradient added to make scrolling visually obvious:
                    .background(
                        LinearGradient(
                            colors: [ .red, .green ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }
        }
        .frame(width: 200, height: 200)
    }
    
}
